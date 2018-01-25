Rails.application.routes.draw do
	root 'index#muestra_presentacion'
	#Contenido de la página
	get '/presentacion' => 'index#muestra_presentacion'
	get '/profesores' => 'index#muestra_profesores'
	get '/evaluacion' => 'index#muestra_evaluacion'
	get '/material' => 'index#muestra_material'
	get '/eval_tareas' => 'index#muestra_eval_tareas'
	get '/archivos_tareas' => 'index#muestra_archivos_tareas'
end
