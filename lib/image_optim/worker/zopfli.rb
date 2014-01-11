require 'image_optim/worker'

class ImageOptim
  class Worker
    class Zopfli < Worker
      def image_formats
        [:png]
      end

      def optimize(src, dst)
        args = %W[-y --always_zopflify #{src} #{dst}]
        execute(:zopflipng, *args) && optimized?(src, dst)
      end
    end
  end
end
