class IndexController < ApplicationController
	

	#Muestra la página inicial
	def index

	end

	def muestra_presentacion
		@titulo = "Programación"
		@contenido1 = "El objetivo del curso, es que al final el alumno:<br>
						<ul>
							<li>Tenga los conocimientos y mecanismos para poder explotar la tecnología disponible.</li>
							<li>Use una computadora para aplicaciones de tipo científico y en la solución de
problemas relacionados con su disciplina.</li>
							<li>Aprenda a diseñar programas con una metodología orientada a objetos.</li>
							<li>Programe en un lenguaje orientado a objetos.</li>
						</ul>"  
		@contenido2 = "Para el objetivo planteado, cada semana se trabaja de la siguiente manera:<br>
						<ul>
							<li>
								Tres horas de clase teórica, en las que se presentan los conceptos y se ilustra su forma de uso. En estas clases se motiva la participación activa de los alumnos para poder valorar su grado de comprensión del tema visto. En la parte de programación se trabajará con el lenguaje Java.
							</li>
							<li>
								Dos horas de ayudantía que tienen dos propósitos principales: reforzar en pizarrón lo visto en las clases teóricas mediante la presentación de ejemplos; y guiar/ayudar al alumno en el desarrollo de sus tareas (programas).
							</li>
						</ul>
							"
		render 'presentacion'
	end

	def muestra_profesores
		render 'profesores'
	end

end
