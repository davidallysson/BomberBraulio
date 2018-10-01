$LOAD_PATH << '.'

require 'gosu'

class Boss
  attr_accessor :x, :y, :width, :height, :img, :radius, :quantidade_de_vidas, :window

  # Método construtor da Classe BOSS
  # Recebe o objeto janela (window) como parâmetro e inicializa todos atributos de Boss.
  def initialize(window)
    @x = 126
    @y = 80

    @width = 48
		@height = 48
    @radius = 24
    @window = window

    # Quantidade de vidas do Boss
    @quantidade_de_vidas = 1
    # Velocidade do Boss
    @velocidadeDeMovimento = 1

    @img = Gosu::Image.new("images/boss.png")
    @numbers = Gosu::Image::load_tiles('images/tile_8x14.png', 8, 14)
  end

  # Método draw da Classe BOSS
  # Exibe o Boss nas coordenadas X e Y e exibe a quantidade de vidas do Boss no mapa.
  def draw
    @img.draw_rot(@x, @y, 3, 1)
  end

  #Move o personagem para cima e realiza a troca dos seus sprites.
  def move_up
    @y -= @velocidadeDeMovimento
		@y = 13 + @radius if @y < 13 + @radius #Limitador do movimento para cima

		@y += @velocidadeDeMovimento if @y >= 56 and @y <= 71 and @x >= 35 and @x <= 59 #Limitação do movimento para cima - 1ª Linha 1° bloco
		@y += @velocidadeDeMovimento if @y >= 56 and @y <= 71 and @x >= 67 and @x <= 91 #Limitação do movimento para cima - 1ª Linha 2° bloco
		@y += @velocidadeDeMovimento if @y >= 56 and @y <= 71 and @x >= 99 and @x <= 123 #Limitação do movimento para cima - 1ª Linha 3° bloco
		@y += @velocidadeDeMovimento if @y >= 56 and @y <= 71 and @x >= 131 and @x <= 155 #Limitação do movimento para cima - 1ª Linha 4° bloco
		@y += @velocidadeDeMovimento if @y >= 56 and @y <= 71 and @x >= 163 and @x <= 187 #Limitação do movimento para cima - 1ª Linha 5° bloco
		@y += @velocidadeDeMovimento if @y >= 56 and @y <= 71 and @x >= 195 and @x <= 219 #Limitação do movimento para cima - 1ª Linha 6° bloco

		@y += @velocidadeDeMovimento if @y >= 88 and @y <= 103 and @x >= 35 and @x <= 59 #Limitação do movimento para cima - 2ª Linha 1° bloco
		@y += @velocidadeDeMovimento if @y >= 88 and @y <= 103 and @x >= 67 and @x <= 91 #Limitação do movimento para cima - 2ª Linha 2° bloco
		@y += @velocidadeDeMovimento if @y >= 88 and @y <= 103 and @x >= 99 and @x <= 123 #Limitação do movimento para cima - 2ª Linha 3° bloco
		@y += @velocidadeDeMovimento if @y >= 88 and @y <= 103 and @x >= 131 and @x <= 155 #Limitação do movimento para cima - 2ª Linha 4° bloco
		@y += @velocidadeDeMovimento if @y >= 88 and @y <= 103 and @x >= 163 and @x <= 187 #Limitação do movimento para cima - 2ª Linha 5° bloco
		@y += @velocidadeDeMovimento if @y >= 88 and @y <= 103 and @x >= 195 and @x <= 219 #Limitação do movimento para cima - 2ª Linha 6° bloco

		@y += @velocidadeDeMovimento if @y >= 110 and @y <= 135 and @x >= 35 and @x <= 59 #Limitação do movimento para cima - 3ª Linha 1° bloco
		@y += @velocidadeDeMovimento if @y >= 110 and @y <= 135 and @x >= 67 and @x <= 91 #Limitação do movimento para cima - 3ª Linha 2° bloco
		@y += @velocidadeDeMovimento if @y >= 110 and @y <= 135 and @x >= 99 and @x <= 123 #Limitação do movimento para cima - 3ª Linha 3° bloco
		@y += @velocidadeDeMovimento if @y >= 110 and @y <= 135 and @x >= 131 and @x <= 155 #Limitação do movimento para cima - 3ª Linha 4° bloco
		@y += @velocidadeDeMovimento if @y >= 110 and @y <= 135 and @x >= 163 and @x <= 187 #Limitação do movimento para cima - 3ª Linha 5° bloco
		@y += @velocidadeDeMovimento if @y >= 110 and @y <= 135 and @x >= 195 and @x <= 219 #Limitação do movimento para cima - 3ª Linha 6° bloco

		@y += @velocidadeDeMovimento if @y >= 142 and @y <= 167 and @x >= 35 and @x <= 59 #Limitação do movimento para cima - 4ª Linha 1° bloco
		@y += @velocidadeDeMovimento if @y >= 142 and @y <= 167 and @x >= 67 and @x <= 91 #Limitação do movimento para cima - 4ª Linha 2° bloco
		@y += @velocidadeDeMovimento if @y >= 142 and @y <= 167 and @x >= 99 and @x <= 123 #Limitação do movimento para cima - 4ª Linha 3° bloco
		@y += @velocidadeDeMovimento if @y >= 142 and @y <= 167 and @x >= 131 and @x <= 155 #Limitação do movimento para cima - 4ª Linha 4° bloco
		@y += @velocidadeDeMovimento if @y >= 142 and @y <= 167 and @x >= 163 and @x <= 187 #Limitação do movimento para cima - 4ª Linha 5° bloco
		@y += @velocidadeDeMovimento if @y >= 142 and @y <= 167 and @x >= 195 and @x <= 219 #Limitação do movimento para cima - 4ª Linha 6° bloco

		@y += @velocidadeDeMovimento if @y >= 174 and @y <= 199 and @x >= 35 and @x <= 59 #Limitação do movimento para cima - 5ª Linha 1° bloco
		@y += @velocidadeDeMovimento if @y >= 174 and @y <= 199 and @x >= 67 and @x <= 91 #Limitação do movimento para cima - 5ª Linha 2° bloco
		@y += @velocidadeDeMovimento if @y >= 174 and @y <= 199 and @x >= 99 and @x <= 123 #Limitação do movimento para cima - 5ª Linha 3° bloco
		@y += @velocidadeDeMovimento if @y >= 174 and @y <= 199 and @x >= 131 and @x <= 155 #Limitação do movimento para cima - 5ª Linha 4° bloco
		@y += @velocidadeDeMovimento if @y >= 174 and @y <= 199 and @x >= 163 and @x <= 187 #Limitação do movimento para cima - 5ª Linha 5° bloco
		@y += @velocidadeDeMovimento if @y >= 174 and @y <= 199 and @x >= 195 and @x <= 219 #Limitação do movimento para cima - 5ª Linha 6° bloco
  end

	#Move o personagem para baixo e realiza a troca dos seus sprites.
  def move_down
		@y += @velocidadeDeMovimento
		@y = (@window.height - @radius - 19) if @y > @window.height - @radius - 19 #Limitador do movimento para baixo

		@y -= @velocidadeDeMovimento if @y >= 40 and @y <= 56 and @x >= 35 and @x <= 59 #Limitação do movimento para baixo - 1ª Linha 1° bloco
		@y -= @velocidadeDeMovimento if @y >= 40 and @y <= 56 and @x >= 67 and @x <= 91 #Limitação do movimento para baixo - 1ª Linha 2° bloco
		@y -= @velocidadeDeMovimento if @y >= 40 and @y <= 56 and @x >= 99 and @x <= 123 #Limitação do movimento para baixo - 1ª Linha 3° bloco
		@y -= @velocidadeDeMovimento if @y >= 40 and @y <= 56 and @x >= 131 and @x <= 155 #Limitação do movimento para baixo - 1ª Linha 4° bloco
		@y -= @velocidadeDeMovimento if @y >= 40 and @y <= 56 and @x >= 163 and @x <= 187 #Limitação do movimento para baixo - 1ª Linha 5° bloco
		@y -= @velocidadeDeMovimento if @y >= 40 and @y <= 56 and @x >= 195 and @x <= 219 #Limitação do movimento para baixo - 1ª Linha 6° bloco

		@y -= @velocidadeDeMovimento if @y >= 72 and @y <= 88 and @x >= 35 and @x <= 59 #Limitação do movimento para baixo - 2ª Linha 1° bloco
		@y -= @velocidadeDeMovimento if @y >= 72 and @y <= 88 and @x >= 67 and @x <= 91 #Limitação do movimento para baixo - 2ª Linha 2° bloco
		@y -= @velocidadeDeMovimento if @y >= 72 and @y <= 88 and @x >= 99 and @x <= 123 #Limitação do movimento para baixo - 2ª Linha 3° bloco
		@y -= @velocidadeDeMovimento if @y >= 72 and @y <= 88 and @x >= 131 and @x <= 155 #Limitação do movimento para baixo - 2ª Linha 4° bloco
		@y -= @velocidadeDeMovimento if @y >= 72 and @y <= 88 and @x >= 163 and @x <= 187 #Limitação do movimento para baixo - 2ª Linha 5° bloco
		@y -= @velocidadeDeMovimento if @y >= 72 and @y <= 88 and @x >= 195 and @x <= 219 #Limitação do movimento para baixo - 2ª Linha 6° bloco

		@y -= @velocidadeDeMovimento if @y >= 104 and @y <= 120 and @x >= 35 and @x <= 59 #Limitação do movimento para baixo - 3ª Linha 1° bloco
		@y -= @velocidadeDeMovimento if @y >= 104 and @y <= 120 and @x >= 67 and @x <= 91 #Limitação do movimento para baixo - 3ª Linha 2° bloco
		@y -= @velocidadeDeMovimento if @y >= 104 and @y <= 120 and @x >= 99 and @x <= 123 #Limitação do movimento para baixo - 3ª Linha 3° bloco
		@y -= @velocidadeDeMovimento if @y >= 104 and @y <= 120 and @x >= 131 and @x <= 155 #Limitação do movimento para baixo - 3ª Linha 4° bloco
		@y -= @velocidadeDeMovimento if @y >= 104 and @y <= 120 and @x >= 163 and @x <= 187 #Limitação do movimento para baixo - 3ª Linha 5° bloco
		@y -= @velocidadeDeMovimento if @y >= 104 and @y <= 120 and @x >= 195 and @x <= 219 #Limitação do movimento para baixo - 3ª Linha 6° bloco

		@y -= @velocidadeDeMovimento if @y >= 136 and @y <= 152 and @x >= 35 and @x <= 59 #Limitação do movimento para baixo - 4ª Linha 1° bloco
		@y -= @velocidadeDeMovimento if @y >= 136 and @y <= 152 and @x >= 67 and @x <= 91 #Limitação do movimento para baixo - 4ª Linha 2° bloco
		@y -= @velocidadeDeMovimento if @y >= 136 and @y <= 152 and @x >= 99 and @x <= 123 #Limitação do movimento para baixo - 4ª Linha 3° bloco
		@y -= @velocidadeDeMovimento if @y >= 136 and @y <= 152 and @x >= 131 and @x <= 155 #Limitação do movimento para baixo - 4ª Linha 4° bloco
		@y -= @velocidadeDeMovimento if @y >= 136 and @y <= 152 and @x >= 163 and @x <= 187 #Limitação do movimento para baixo - 4ª Linha 5° bloco
		@y -= @velocidadeDeMovimento if @y >= 136 and @y <= 152 and @x >= 195 and @x <= 219 #Limitação do movimento para baixo - 4ª Linha 6° bloco

		@y -= @velocidadeDeMovimento if @y >= 168 and @y <= 184 and @x >= 35 and @x <= 59 #Limitação do movimento para baixo - 5ª Linha 1° bloco
		@y -= @velocidadeDeMovimento if @y >= 168 and @y <= 184 and @x >= 67 and @x <= 91 #Limitação do movimento para baixo - 5ª Linha 2° bloco
		@y -= @velocidadeDeMovimento if @y >= 168 and @y <= 184 and @x >= 99 and @x <= 123 #Limitação do movimento para baixo - 5ª Linha 3° bloco
		@y -= @velocidadeDeMovimento if @y >= 168 and @y <= 184 and @x >= 131 and @x <= 155 #Limitação do movimento para baixo - 5ª Linha 4° bloco
		@y -= @velocidadeDeMovimento if @y >= 168 and @y <= 184 and @x >= 163 and @x <= 187 #Limitação do movimento para baixo - 5ª Linha 5° bloco
		@y -= @velocidadeDeMovimento if @y >= 168 and @y <= 184 and @x >= 195 and @x <= 219 #Limitação do movimento para baixo - 5ª Linha 6° bloco
  end

	#Move o personagem para a esquerda e realiza a troca dos seus sprites.
  def move_left
		@x -= @velocidadeDeMovimento
		@x = 7 + @radius if @x < 7 + @radius #Limitador do movimento para a esquerda

		@x += @velocidadeDeMovimento if @y >= 40 and @y <= 62 and @x >= 35 and @x <= 59 #Limitação do movimento para a esquerda - 1ª Linha 1° bloco
		@x += @velocidadeDeMovimento if @y >= 40 and @y <= 62 and @x >= 67 and @x <= 91 #Limitação do movimento para a esquerda - 1ª Linha 2° bloco
		@x += @velocidadeDeMovimento if @y >= 40 and @y <= 62 and @x >= 99 and @x <= 123 #Limitação do movimento para a esquerda - 1ª Linha 3° bloco
		@x += @velocidadeDeMovimento if @y >= 40 and @y <= 62 and @x >= 131 and @x <= 155 #Limitação do movimento para a esquerda - 1ª Linha 4° bloco
		@x += @velocidadeDeMovimento if @y >= 40 and @y <= 62 and @x >= 163 and @x <= 187 #Limitação do movimento para a esquerda - 1ª Linha 5° bloco
		@x += @velocidadeDeMovimento if @y >= 40 and @y <= 62 and @x >= 195 and @x <= 219 #Limitação do movimento para a esquerda - 1ª Linha 6° bloco

		@x += @velocidadeDeMovimento if @y >= 72 and @y <= 94 and @x >= 35 and @x <= 59 #Limitação do movimento para a esquerda - 2ª Linha 1° bloco
		@x += @velocidadeDeMovimento if @y >= 72 and @y <= 94 and @x >= 67 and @x <= 91 #Limitação do movimento para a esquerda - 2ª Linha 2° bloco
		@x += @velocidadeDeMovimento if @y >= 72 and @y <= 94 and @x >= 99 and @x <= 123 #Limitação do movimento para a esquerda - 2ª Linha 3° bloco
		@x += @velocidadeDeMovimento if @y >= 72 and @y <= 94 and @x >= 131 and @x <= 155 #Limitação do movimento para a esquerda - 2ª Linha 4° bloco
		@x += @velocidadeDeMovimento if @y >= 72 and @y <= 94 and @x >= 163 and @x <= 187 #Limitação do movimento para a esquerda - 2ª Linha 5° bloco
		@x += @velocidadeDeMovimento if @y >= 72 and @y <= 94 and @x >= 195 and @x <= 219 #Limitação do movimento para a esquerda - 2ª Linha 6° bloco

		@x += @velocidadeDeMovimento if @y >= 104 and @y <= 126 and @x >= 35 and @x <= 59 #Limitação do movimento para a esquerda - 3ª Linha 1° bloco
		@x += @velocidadeDeMovimento if @y >= 104 and @y <= 126 and @x >= 67 and @x <= 91 #Limitação do movimento para a esquerda - 3ª Linha 2° bloco
		@x += @velocidadeDeMovimento if @y >= 104 and @y <= 126 and @x >= 99 and @x <= 123 #Limitação do movimento para a esquerda - 3ª Linha 3° bloco
		@x += @velocidadeDeMovimento if @y >= 104 and @y <= 126 and @x >= 131 and @x <= 155 #Limitação do movimento para a esquerda - 3ª Linha 4° bloco
		@x += @velocidadeDeMovimento if @y >= 104 and @y <= 126 and @x >= 163 and @x <= 187 #Limitação do movimento para a esquerda - 3ª Linha 5° bloco
		@x += @velocidadeDeMovimento if @y >= 104 and @y <= 126 and @x >= 195 and @x <= 219 #Limitação do movimento para a esquerda - 3ª Linha 6° bloco

		@x += @velocidadeDeMovimento if @y >= 136 and @y <= 158 and @x >= 35 and @x <= 59 #Limitação do movimento para a esquerda - 4ª Linha 1° bloco
		@x += @velocidadeDeMovimento if @y >= 136 and @y <= 158 and @x >= 67 and @x <= 91 #Limitação do movimento para a esquerda - 4ª Linha 2° bloco
		@x += @velocidadeDeMovimento if @y >= 136 and @y <= 158 and @x >= 99 and @x <= 123 #Limitação do movimento para a esquerda - 4ª Linha 3° bloco
		@x += @velocidadeDeMovimento if @y >= 136 and @y <= 158 and @x >= 131 and @x <= 155 #Limitação do movimento para a esquerda - 4ª Linha 4° bloco
		@x += @velocidadeDeMovimento if @y >= 136 and @y <= 158 and @x >= 163 and @x <= 187 #Limitação do movimento para a esquerda - 4ª Linha 5° bloco
		@x += @velocidadeDeMovimento if @y >= 136 and @y <= 158 and @x >= 195 and @x <= 219 #Limitação do movimento para a esquerda - 4ª Linha 6° bloco

		@x += @velocidadeDeMovimento if @y >= 168 and @y <= 190 and @x >= 35 and @x <= 59 #Limitação do movimento para a esquerda - 5ª Linha 1° bloco
		@x += @velocidadeDeMovimento if @y >= 168 and @y <= 190 and @x >= 67 and @x <= 91 #Limitação do movimento para a esquerda - 5ª Linha 2° bloco
		@x += @velocidadeDeMovimento if @y >= 168 and @y <= 190 and @x >= 99 and @x <= 123 #Limitação do movimento para a esquerda - 5ª Linha 3° bloco
		@x += @velocidadeDeMovimento if @y >= 168 and @y <= 190 and @x >= 131 and @x <= 155 #Limitação do movimento para a esquerda - 5ª Linha 4° bloco
		@x += @velocidadeDeMovimento if @y >= 168 and @y <= 190 and @x >= 163 and @x <= 187 #Limitação do movimento para a esquerda - 5ª Linha 5° bloco
		@x += @velocidadeDeMovimento if @y >= 168 and @y <= 190 and @x >= 195 and @x <= 219 #Limitação do movimento para a esquerda - 5ª Linha 6° bloco
  end

	#Move o personagem para a direita e realiza a troca dos seus sprites.
  def move_right
		@x += @velocidadeDeMovimento
		@x = (@window.width - @radius - 9) if @x > @window.width - @radius - 9 #Limitador do movimento para a direita

		@x -= @velocidadeDeMovimento if @y >= 40 and @y <= 62 and @x >= 35 and @x <= 59 #Limitação do movimento para a direita - 1ª Linha 1° bloco
		@x -= @velocidadeDeMovimento if @y >= 40 and @y <= 62 and @x >= 67 and @x <= 91 #Limitação do movimento para a direita - 1ª Linha 2° bloco
		@x -= @velocidadeDeMovimento if @y >= 40 and @y <= 62 and @x >= 99 and @x <= 123 #Limitação do movimento para a direita - 1ª Linha 3° bloco
		@x -= @velocidadeDeMovimento if @y >= 40 and @y <= 62 and @x >= 131 and @x <= 155 #Limitação do movimento para a direita - 1ª Linha 4° bloco
		@x -= @velocidadeDeMovimento if @y >= 40 and @y <= 62 and @x >= 163 and @x <= 187 #Limitação do movimento para a direita - 1ª Linha 5° bloco
		@x -= @velocidadeDeMovimento if @y >= 40 and @y <= 62 and @x >= 195 and @x <= 219 #Limitação do movimento para a direita - 1ª Linha 6° bloco

		@x -= @velocidadeDeMovimento if @y >= 72 and @y <= 94 and @x >= 35 and @x <= 59 #Limitação do movimento para a direita - 2ª Linha 1° bloco
		@x -= @velocidadeDeMovimento if @y >= 72 and @y <= 94 and @x >= 67 and @x <= 91 #Limitação do movimento para a direita - 2ª Linha 2° bloco
		@x -= @velocidadeDeMovimento if @y >= 72 and @y <= 94 and @x >= 99 and @x <= 123 #Limitação do movimento para a direita - 2ª Linha 3° bloco
		@x -= @velocidadeDeMovimento if @y >= 72 and @y <= 94 and @x >= 131 and @x <= 155 #Limitação do movimento para a direita - 2ª Linha 4° bloco
		@x -= @velocidadeDeMovimento if @y >= 72 and @y <= 94 and @x >= 163 and @x <= 187 #Limitação do movimento para a direita - 2ª Linha 5° bloco
		@x -= @velocidadeDeMovimento if @y >= 72 and @y <= 94 and @x >= 195 and @x <= 219 #Limitação do movimento para a direita - 2ª Linha 6° bloco

		@x -= @velocidadeDeMovimento if @y >= 104 and @y <= 126 and @x >= 35 and @x <= 59 #Limitação do movimento para a direita - 3ª Linha 1° bloco
		@x -= @velocidadeDeMovimento if @y >= 104 and @y <= 126 and @x >= 67 and @x <= 91 #Limitação do movimento para a direita - 3ª Linha 2° bloco
		@x -= @velocidadeDeMovimento if @y >= 104 and @y <= 126 and @x >= 99 and @x <= 123 #Limitação do movimento para a direita - 3ª Linha 3° bloco
		@x -= @velocidadeDeMovimento if @y >= 104 and @y <= 126 and @x >= 131 and @x <= 155 #Limitação do movimento para a direita - 3ª Linha 4° bloco
		@x -= @velocidadeDeMovimento if @y >= 104 and @y <= 126 and @x >= 163 and @x <= 187 #Limitação do movimento para a direita - 3ª Linha 5° bloco
		@x -= @velocidadeDeMovimento if @y >= 104 and @y <= 126 and @x >= 195 and @x <= 219 #Limitação do movimento para a direita - 3ª Linha 6° bloco

		@x -= @velocidadeDeMovimento if @y >= 136 and @y <= 158 and @x >= 35 and @x <= 59 #Limitação do movimento para a direita - 4ª Linha 1° bloco
		@x -= @velocidadeDeMovimento if @y >= 136 and @y <= 158 and @x >= 67 and @x <= 91 #Limitação do movimento para a direita - 4ª Linha 2° bloco
		@x -= @velocidadeDeMovimento if @y >= 136 and @y <= 158 and @x >= 99 and @x <= 123 #Limitação do movimento para a direita - 4ª Linha 3° bloco
		@x -= @velocidadeDeMovimento if @y >= 136 and @y <= 158 and @x >= 131 and @x <= 155 #Limitação do movimento para a direita - 4ª Linha 4° bloco
		@x -= @velocidadeDeMovimento if @y >= 136 and @y <= 158 and @x >= 163 and @x <= 187 #Limitação do movimento para a direita - 4ª Linha 5° bloco
		@x -= @velocidadeDeMovimento if @y >= 136 and @y <= 158 and @x >= 195 and @x <= 219 #Limitação do movimento para a direita - 4ª Linha 6° bloco

		@x -= @velocidadeDeMovimento if @y >= 168 and @y <= 190 and @x >= 35 and @x <= 59 #Limitação do movimento para a direita - 5ª Linha 1° bloco
		@x -= @velocidadeDeMovimento if @y >= 168 and @y <= 190 and @x >= 67 and @x <= 91 #Limitação do movimento para a direita - 5ª Linha 2° bloco
		@x -= @velocidadeDeMovimento if @y >= 168 and @y <= 190 and @x >= 99 and @x <= 123 #Limitação do movimento para a direita - 5ª Linha 3° bloco
		@x -= @velocidadeDeMovimento if @y >= 168 and @y <= 190 and @x >= 131 and @x <= 155 #Limitação do movimento para a direita - 5ª Linha 4° bloco
		@x -= @velocidadeDeMovimento if @y >= 168 and @y <= 190 and @x >= 163 and @x <= 187 #Limitação do movimento para a direita - 5ª Linha 5° bloco
		@x -= @velocidadeDeMovimento if @y >= 168 and @y <= 190 and @x >= 195 and @x <= 219 #Limitação do movimento para a direita - 5ª Linha 6° bloco
  end

end
