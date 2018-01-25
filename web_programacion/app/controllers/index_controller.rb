class IndexController < ApplicationController
	

	#Muestra la página inicial
	def index

	end

	def presentacion
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
	end

	def profesores
		@contenido_profesor = "<ul>
									<li>Dra. Amparo López Gaona.</li>
									<li>Ubicación: <strong>Cub. 109 del Departamento de Matemáticas </strong> de la Facultad de Ciencias de la UNAM.</li>
									<li>Correo Electrónico: <strong>alg@ciencias.unam.mx</strong></li>
								</ul>
								"
		@contenido_ayudante = "<ul>
									<li>Miguel Angel Mendoza Ponce.</li>
									<li>Correo Electrónico: <strong>migue_060195@ciencias.unam.mx</strong></li>
								</ul>
								"
		@contenido_horario = "<ul>
									<li>Teoría: lu mi vi 8 a 9 204(Yellizcalli)</li>
									<li>Ayudantía: ma ju 8 a 9 204(Yellizcalli)</li>
								</ul>
							"
		@contenido_materia = "<ul>
									<li>Asignatura: <strong>Programación</strong></li>
									<li>Clave: 1236</li>
									<li>Grupo: 9186</li>
									<li>Carácter: Obligatoria</li>
								</ul>
							"
	end

	def temario
		@temario = "<ol>
						<li>Vista panorámica de la programación orientada a objetos</li>
						<li>Objetos, estados y servicios</li>
						<li>Creación de clases</li>
						<li>Datos estructurados </li>
						<li>Herencia</li>
						<li>Manejo de errores</li>
						<li>Objetos persistentes </li>
					</ol>"
	end

	def evaluacion
		@evaluacion = "<body>
<h4>La evaluación de los alumnos es en base al trabajo desarrollado a lo largo del curso. Este trabajo consta de:</h4>

<ul>
<li>Ejercicios. Deben resolver los ejercicios y entregarlos resueltos.</li>
<li>Una investigación. Deben investigar acerca de un tema particular y entregar un reporte escrito del resultado de su investigación.</li>
<li> Programas. Se plantea un problema y tienen que desarrollar y entregar un programa para resolverlo.</li>
<li>Tareas de 'pensar'. Deben reflexionar acerca de un punto que se esté tratando en clase.</li>
<li>Exámenes mensuales y uno final.</li>
<li>Prácticas semanales.</li>
<li>Un programa final que engloba todos los conocimientos adquiridos durante el curso.</li>
</ul>
<br>
<h4>Aspectos que se toman en cuenta para calificar los programas</h4>
<ul>
<li>Funcionalidad. El programa debe resolver el problema planteado. Si no funciona o resuelve un problema distinto del que se planteó se considera no entregado.</li>
<li>Robustez. En el programa se deben programar acciones para realizar en los posibles casos de error.</li>
<li>Facilidad de uso. Debe ser claro y sencillo utilizar el programa.</li>
<li>Uso correcto del lenguaje de programación. Por ejemplo, No duplicar código si puede usarse una instrucción de repetición o un método. Para lograr robustez utiliza las excepciones, etc.</li>
<li>Legibilidad. El programa debe estar escrito siguiendo las normas de estilo especificadas en los apéndices A y D del libro de texto.</li>
</ul>
<br>
<h4>Condiciones para presentar examenes</h4>
<ul>
<li>Puntualidad. No se permite la entrada al examen a nadie que llegue una vez empezado.</li>
<li>Presentar identificación al entrar al aula en que se aplique el examen.</li>
<li>Apagar su celular durante el examen</li>
<!--  , si alguien lo usa para lo que sea, inclusive para ver la hora, o nos damos cuenta que lo tienen encedido le quitamos el examen y el alumno debe abandonar el salón.</li>-->
</ul>
<br>
<h4>Requisitos para aprobar el curso:</h4>
<ul>
<li>Para aprobar el curso es necesario tener calificación aprobatoria en los exámenes y en el programa final.</li>
<li>No hay reposición de exámenes.</li>
<li>No es posible renunciar a la calificación obtenida.</li>
<li>Para que se asiente en el acta NP es necesario que a lo más hayan entregado una tarea.</li>
<li>De ninguna manera se hará curva para la calificación final.</li>
</ul>

						"
	end

	def material 
		@archivos = Dir.glob("#{Rails.root}/public/material/*")
	end

	def descargar
		send_file params[:archivo]
	end

end
