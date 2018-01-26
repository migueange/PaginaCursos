Rails.application.routes.draw do
	root 'index#presentacion'
	#Contenido de la página
	get '/presentacion' => 'index#presentacion'
	get '/profesores' => 'index#profesores'
	get '/temario' => 'index#temario'
	get '/evaluacion' => 'index#evaluacion'
	get '/material' => 'index#material'
	get '/eval_tareas' => 'index#eval_tareas'
	get '/archivos_tareas' => 'index#archivos_tareas'
	#Descarga de archivos
	post '/descargar' => 'index#descargar'
	#Carga de archivos
	get 'subir_tareas' => 'index#subir_tareas'
	post 'cargar_tareas' =>  'index#cargar_tareas'
	get 'cargar_tareas' =>  'index#subir_tareas'
	get 'subir_material' => 'index#subir_material'
	post 'cargar_material' => 'index#cargar_material'
	get 'cargar_material' => 'index#subir_material'
	#Hoja calculo
	get "/hoja_calculo" => 'index#hoja_calculo'

end
