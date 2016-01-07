Umeditor::Engine.routes.draw do
  post 'umeditor/upload' => 'image#upload'
end
