Rails.application.routes.draw do
	root 'index#muestra_presentacion'
	#Contenido de la página
	get '/presentacion' => 'index#presentacion'
	get '/profesores' => 'index#profesores'
	get '/temario' => 'index#temario'
	get '/evaluacion' => 'index#evaluacion'
	get '/material' => 'index#material'
	get '/eval_tareas' => 'index#eval_tareas'
	get '/archivos_tareas' => 'index#archivos_tareas'

	get '/descargar' => 'index#descargar'
	get '/subir_archivo' => 'index#material'
end
