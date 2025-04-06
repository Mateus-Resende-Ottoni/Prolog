# *D&D Ficha*

## *Objetivo*
Propiciar uso dinâmico de uma ficha de personagem de Dungeons&Dragons, diminuindo a quantidade de fatos que devem ser checados pelo jogador em cada ação e dinamizando cálculos ao automatizá-los.

## *Como usar*
### *Instalar Prolog*
Para o uso, será necessário ter instalado a versão SWI de Prolog, disponível em [https://www.swi-prolog.org/](https://www.swi-prolog.org/).

### *Uso dos arquivos*
- Editar as informações de personagem no arquivo *character.pl* (seguir o formato já presente e não mudar os nomes atribuídos aos fatos, para garantir funcionamento).
- Abrir e executar comandos apenas no arquivo *character.pl*.

### *Adicionando novo fato*
Para o caso de desejar adicionar um fato de algo não representado (como um novo feitiço ou tipo de arma):
- Abrir para edição o respectivo arquivo onde se encontra o fato (por exemplo, abrir *spells.pl* para feitiços).
- Digitar, junto aos demais fatos já existentes, um fato que corresponda ao formato já seguido.
- A primeira letra não pode ser maiúscula nem *_*, do contrário o programa tratará tal como variável desconhecida, e não como fato.

#### *Formato padrão para adição*

##### *classes.pl*

class(Nome_da_classe).
subclass(Nome_da_classe, Nome_da_subclasse).
class_hp(Nome_da_classe, HP_medio_por_nivel).
spellcasting_attribute(Nome_da_classe, Atributo_para_feitiços).

##### *skills.pl*

skill(Atributo_da_habilidade, Nome_da_habilidade).

##### *spells.pl*

cantrips_stats(Nome_da_cantrip, Numero_de_dados, Dado_de_dano, Tipo_de_dano, Tipo_de_acerto).
spell_stats(Nome_do_feitiço, Numero_de_dados, Dado_de_dano, Nivel_base, Tipo_de_dano, Tipo_de_acerto).
spell_bonus(Nome_do_feitiço, Bônus_de_dano).

##### *weapons.pl*

weapon_stats(Nome_da_arma, Numero_de_dados, Dado_de_dano, Tipo_de_dano, Atributo_de_uso)
