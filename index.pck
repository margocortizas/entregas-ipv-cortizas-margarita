GDPC                                                                            &   D   res://.import/background.png-db55ec47224fbca7de3496d6823058f9.stex        `       QP3,� !�9��c���Z@   res://.import/cannon.png-fa81fcdbbbb6e136dfe56caebadba289.stex  @      �      �Ǻ�֋k#�t�S%�@   res://.import/floor.png-bc19f2b688ab458014752317127027f7.stex   �       F       �C�^�_�='l^��<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex t      �      &�y���ڞu;>��.p@   res://.import/player.png-965fb12be218bfe81cbf4b66ef213928.stex  �#      0      �.���L���Y^kL   res://.import/proyectile_player.png-132abea7930406785970417e0c2cdfbf.stex   �:            ����3"Cv�8U�=�L   res://.import/proyectile_turret.png-f1f226341636bbe57dd638c8e94ffde6.stex   �?      �       W�!~CeL>Dy�?2�M@   res://.import/turret.png-54022cbf2106bc383902c76b01ff8de2.stex  0C      �      \+�u�*R'�\k�;U�   res://Main.gd.remap `~             �(@Er�#��K�F�[   res://Main.gdc  �      "      b��E� L�B�_�F:   res://Main.tscn       �
      �@��z����<ڙ,   res://assets/textures/background.png.import p      �      v��00M
������7c,(   res://assets/textures/cannon.png.import        �      a�,2j���J���$(   res://assets/textures/floor.png.import  !      �      ��į�}���7��S6z(   res://assets/textures/player.png.import  8      �      ^��M������e^�54   res://assets/textures/proyectile_player.png.import  �<      �      Z��q�����ٝ�4   res://assets/textures/proyectile_turret.png.import  P@      �      ��}��q�#wʖe�k��(   res://assets/textures/turret.png.import P      �      �J��|��D��~   res://default_env.tres  �R      �       um�`�N��<*ỳ�8$   res://entities/Projectile.gd.remap  �~      .       ��'����J�����y    res://entities/Projectile.gdc   �S      f      ��@�(m�ʉo��    res://entities/Projectile.tscn  �W      �       4������rlMm\��(   res://entities/enemies/Turret.gd.remap  �~      2       :�����ri���[�$   res://entities/enemies/Turret.gdc   �X      �      Լ��*\;Eo��7�3�$   res://entities/enemies/Turret.tscn  �]      "      kӏ�o��#P���,   res://entities/enemies/TurretProjectile.tscn�a      x      l�r�O�\UڥQ�&�0   res://entities/enemies/TurretsSpawner.gd.remap  �~      :       m���_q��ڄ&9����,   res://entities/enemies/TurretsSpawner.gdc   @c      �      J�
�\X>��1�(   res://entities/player/Cannon.gd.remap   0      1       ���/lt�F�� o    res://entities/player/Cannon.gdc f      �      ~���U"I����(   res://entities/player/Player.gd.remap   p      1       %���p	2I:{X���    res://entities/player/Player.gdc�g      �      +$���4a����(�
$   res://entities/player/Player.tscn   �n      U      L�H�T�֠�%#j��,   res://entities/player/PlayerProjectile.tscn �r      !      )�{s�Ј-���>�bv   res://icon.png  �      �      G1?��z�c��vN��   res://icon.png.import    z      �      ��fe��6�B��^ U�   res://project.binary��      X      �sT�܉��U(�x�I�   res://world/Floor.tscn  �|      �      ��T1��a���Qj        GDSC          
   +      ���Ӷ���   �����Ķ�   �����Ķ�   �������������Ķ�   �������������Ķ�   �����϶�   ���������Ӷ�                   
                              #   	   )   
   3YY5;�  W�  Y5;�  W�  YY0�  PQV�  �%  PQ�  �  T�  PQ�  �  T�  PQY`              [gd_scene load_steps=9 format=2]

[ext_resource path="res://entities/player/Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://assets/textures/background.png" type="Texture" id=2]
[ext_resource path="res://Main.gd" type="Script" id=3]
[ext_resource path="res://entities/enemies/Turret.tscn" type="PackedScene" id=4]
[ext_resource path="res://entities/enemies/TurretsSpawner.gd" type="Script" id=5]
[ext_resource path="res://world/Floor.tscn" type="PackedScene" id=6]
[ext_resource path="res://assets/textures/floor.png" type="Texture" id=7]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32, 32 )

[node name="Main" type="Node"]
script = ExtResource( 3 )

[node name="CanvasLayer" type="CanvasLayer" parent="."]
layer = -1

[node name="Background" type="TextureRect" parent="CanvasLayer"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -33.0
margin_top = -113.0
margin_right = 6.0
margin_bottom = 198.0
texture = ExtResource( 2 )
expand = true

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 406.003, 378 )

[node name="Camera2D" type="Camera2D" parent="Player"]
current = true

[node name="TurretsSpawner" type="Node" parent="."]
script = ExtResource( 5 )
turret_scene = ExtResource( 4 )

[node name="Floor" parent="." instance=ExtResource( 6 )]
position = Vector2( 466, 782 )
scale = Vector2( 2.26816, 4.02004 )

[node name="Floor3" parent="." instance=ExtResource( 6 )]
position = Vector2( -349, 316 )
rotation = -1.5708
scale = Vector2( 1.44, 3.72 )

[node name="Floor4" parent="." instance=ExtResource( 6 )]
position = Vector2( 1092, 232 )
rotation = -1.5708
scale = Vector2( 1, 3.32 )

[node name="Floor2" parent="." instance=ExtResource( 6 )]
position = Vector2( 352, -182 )
scale = Vector2( 2.48151, 2.13231 )

[node name="Cubo" type="RigidBody2D" parent="."]
position = Vector2( 639, 246 )

[node name="Sprite" type="Sprite" parent="Cubo"]
texture = ExtResource( 7 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Cubo"]
shape = SubResource( 1 )

[node name="Cubo2" type="RigidBody2D" parent="."]
position = Vector2( 103, 123 )

[node name="Sprite" type="Sprite" parent="Cubo2"]
texture = ExtResource( 7 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Cubo2"]
shape = SubResource( 1 )

[node name="Cubo3" type="RigidBody2D" parent="."]
position = Vector2( 599, 94 )

[node name="Sprite" type="Sprite" parent="Cubo3"]
texture = ExtResource( 7 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Cubo3"]
shape = SubResource( 1 )

[node name="Cubo4" type="RigidBody2D" parent="."]
position = Vector2( 496, 164 )

[node name="Sprite" type="Sprite" parent="Cubo4"]
texture = ExtResource( 7 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Cubo4"]
shape = SubResource( 1 )
           GDST   X           D   WEBPRIFF8   WEBPVP8L+   /Õ ������I���dD�3�����?��������?�g [remap]

importer="texture"
type="StreamTexture"
path="res://.import/background.png-db55ec47224fbca7de3496d6823058f9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/background.png"
dest_files=[ "res://.import/background.png-db55ec47224fbca7de3496d6823058f9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDST"               �  WEBPRIFF�  WEBPVP8L}  /!@o)�$G�W-��:Ѫ���6������Ͱm�H������nc�V�}��.��B	d�G#�2
�����7�2�����DA\�;�Q�(!ֱ��x�D
�[J]��a8���Pjp�e�`���O��-�9�I�@���$Ӵ��W 6���Y�+?=66����|?su�C�}ngE�ݥgx5��Y�����1�7a("`��Y)�� ���:�4@�`��`4V7	��e��IK
�7������q��(�[�@*5�q0�Zʷ���ML�Dzt;��dB���3�������b�'��P�)4�������_ A ��Qf�o�m�m3ζ��ٶ��)O��� � ��d�XSR�ӬZ����\�P(D X,!�F������i�;�**���@���]PP_�l)�"l��������ѩ�R��B�P��no���#EK�3�� �P(��η�|*5o���qyG�	��sssP(W�D"�{��`,..���h*5湿���/����ښ���I����Z�������w����|}�H�6��gh����z!�D��v��U��Ź*�Jeс� ���ϣ�T>��U� �\hk���d�Y\�����b0k��I�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/cannon.png-fa81fcdbbbb6e136dfe56caebadba289.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/cannon.png"
dest_files=[ "res://.import/cannon.png-fa81fcdbbbb6e136dfe56caebadba289.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDSTB   B            *   WEBPRIFF   WEBPVP8L   /A@ P�������            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/floor.png-bc19f2b688ab458014752317127027f7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/floor.png"
dest_files=[ "res://.import/floor.png-bc19f2b688ab458014752317127027f7.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDST?   X              WEBPRIFF  WEBPVP8L�  />�͈Iv�?�%"��m���$Ŀ�=x28!��6bH�?�7�j`������x�x��*z�m��ȶ�]O�,�)�v1����]������5�F���֬���\�ɆL˲"�#��,�/l�I���8���bwW7۶m�ϒ�%-ٶm۶m�g�9U��%ٶU�V�s�}�����ݝ�K��)w�@�$(�K~wwxr��9g���E۶)I�/P��e۶mm۶m۶�i�(�i;�ρ�H���=��G��/Vr +���6�^5�4Vq���8��X�ɤT۪vH�ּ*�qŝr펹ݑ*?�+��Z��(��:ߤzrʆ��\���r�����9_5l�AZW,4Ԭ��R��De  ��;ke���}�N��� ��y�l�W�R�n� O/��wJ�>����"J�D$��ab��!�V��L��*L��5&Pדkl��DUqŢ��Uz�[���EG5U�6W��b~��vC��'�  <�ӴSi�+((�1�  �"H�#@$�H,怷⽌�&�jܱ�؆b�QvŢ��V��^���g;��ʨ �������K �Y#��(�Ba � b 2"1�+q@e�d�	�'�f�Z�n��ke��R�>���@/��P�[��f5{>��A��^���P�S�$� � 0�$pILT�7�SsA
.��U۸���q)
 �?�ާ<�f��ͱ-�;�%[A���l"S���h߆��ռ�P��>����m�� �f�HVr����4;i�#	XPL�C9|(�O ,4���C�JY����<z8a��q[wG3+�UK���b�9	�;U���ʂ5PW��Iu[��-�,�,`���,��`�z�,�WY, m��(���B��]!e%��
�,F�`$�0��eJZ+
��#�	��d*�I)��>��k��X'��YGr�o�M���ZA**BP�/x$X)�Z7?���Kg���hn�HuJ�)#Rɛ"�x�@�:�C;m��_��S������b`ףO#���|a1Hz8�[|��

�c
67Hm�9?����`�ͭ]%|@	#U��_���U�?�{�:XW�z������u���ݝLu�܈4/��!^��{޼ԷJ�j�5e�؃X� ��
���� Q"6&-��H\�TQS�쵑v�U@�;c!lq�_�km��_���hf�y�q����O}���>q��w_��j�v�h���������	���;[�u��։6U��+T�(�'Q �@%��`+�-�ε�C�	y6a8�ņK=�ڟ�Jq"y[$��B��3� |���|�O�A���2*G5����@��x�ySU:2�aw`�Ľ�l�����;�L�Z�t��k�Ӟ]�6��I�@���Բ��:�J�".��*8p&".�-@\��ΊcqN "I*Q�M@
H)�����������_+w��[ @�Ģ����7����9�s�����)Y��S�����R� � ὿��������-?v�~��l�͋^L�M3���ٝ�6>:J����޾����ߙ�!���Cb�\^��ŵ|���9ݳ��OlJ���E#�4�hn��  �<�����o�� 0J�Z5�芕���qP+����'Zõ��(�맇�4�]i�����W�����:�sU ��>�x8�۽���ܢJ�a�mOm�i"Ƭg+�`+� P  h%D���7X�c ��F!`��^+�.vfv&��Zx�1���a|�7�9rv�  �t�~v��O���� �����[��ǿ��]�#��91F?x���օ  H�J�#�}�I�~��G�f�[/n� `  ����1�F��U  �>|+@���G��x#o^�i��U��D�ĳl��?�K���S���� ���c��S ��
���}]��GQNQ���>;��O~y���o�~ ��K�`� ޹�G_��Ń�\����z��R��7[�� �������ڱ�]�}E y�\���:�F�r���Ơ1 ?�1���&�Ju���:  p���|�� `c� ���k>s���߸p�wF��/w�ޅ��tP0���|�>���׌��R��>����� �@�h�:	 �&&W��
L.��}  ���*�K  ����􏫁�@>0��yVQ  ٴ<���=h  �^Ի�w���"���,�N�.wup��?��<1���oX��0�  � @`��-�L�C��(&��[��~�/}��4����7<{h�@D�V��%Z8z�$�v��s �:8q� ����"kcE�ڛ������l�{ �{�?{�y(���Z]��HA�H|����X]�  F�n��<�j΄���(��&���� ��6��e���f4�\��ɥ�Av T&���/��V��� O%���P�p�����y[�M������� ��B��� |��9?k�\�J ��������ؕ ��G�   �=,o��]��9�/�L  �=��
�)@ǐ����Z�'ӛ��jM��!��r����;����Su Cw�sOL�3�d:�
  �!������l�QZh� ����腳�Ѯ0�`���bbF��%����/�����7 �˗|x$ �󦱱]q�wf�\3 6���p# t���S�����Q$(�C �I�Zn��^� 
�Lg��ɱ�?e4�Y[Z�����6�s�ڙP����,Y��El� �	�P$h�u�/dʇ��tx$�*E�<���YW������vW�N<��.�� �O�ɡ�zZ8&�ɺh�7�o �  ��d � ��D����z�B�su�T�#���wQ���ֶ��2�@!H�s�ON?z����CO�@���ǿ���Xڗ�=8vt�  Û�u�q*�- Q$�D-���VB:ړ��9 H�o>����\�l�"����]?����ry��-���卾�ֿ.�@ 8JpDJ��0�  �$��J4�� hIH��d��݃�MD ������?��~�i$�S�l?[�8x�� dzh] E
�w�jƎ�Rj٪��`>� jҌ�ٗ�?_������ep���O�6�L�}�"  Ǘ��$б��W,f}G�?��Ū��N�*uȐq�Z(�(�R4#k�� ޭ>��z_�l.��@�����~]�!�Q]!�q?�u0ni�kd���ub
�)/Zm=hFSkm�n����<�e�,ȩ��t�w6�	�&L�@K���/W��p@V�ٵ4\۝=W�E�r>��W�چ��
꡽�	�i�wI@ %����}��7{���]<�(������T�������"���jO[�OI���*O���ŀc7(B������.}���
e�x'��x�[�k��k����`�O��6���s��f�5�x�����3/��o��Kf�J)��b��N\�"��	��b�>)S�ԁ#���ԭNo�?��+�|b��}�Y'��B�����W����C�ԂT0�	.E8��ܧW��P.����)�t��u�5�U]-Q2;�x���&�r�ō�vw�I\���1 Y�e�X`iHY���Y� �����ݵ���M��Alln�d�CB*�����&|�A���p�����EY ̌J2O��sm���$��X�[�k��rCy�(r�{��W|�fGA������E@X��U�L8�TCf]ŇF�}b 3�R����/��i�`~I?��	 �@`�}�&��銛?AI66���Kg�K]�0#QJ7~�t�؁�K�M�M�� ��!�j�y����W���K��I3%�BI��.���tS-S��I�#@�\ 8�  �8���K]�V��set*�@��������V����,,~
�3��GV���l����a�d�YڄݓC��%90���Mj���,�G�����q�:��P�� ��J�̄`�!� �D�͕������\rP����{�Om�^�i�6f��yn\( �W���q�}�q����K��q�kQ��7�Z�}s��Ƨ���1��ö����FP<Ѐ��#�#@��c������q�ߒ�u�=�#˯��q^  �A&Ʌ��W�:9��s#, r�G�s��@|�pH��4#�v����Y��*Lo���<c���  ���g:�3���1���`��J�
  �xq��K�rm��Nΰ��I�p ��8� ���v� YV����8S��-�9�BZ9l�.��@ ������md��V�)�`��#8��K� {�[�ˁ+�| v�
"���V��j@2�Yy�����2 �� n.���A1�R��k��=� �i�x hTP�	��zt�~��AF��a^X��;`ɛp�/]   b4LyB���j^�����}�"��tO�W�v��0� �)�&���|-�<��a�V���   `�e�����X��l�iS�	��[�zEm>��0��~��Љ��A�L�&��:~��ͳ   �Xs@�&���M�Bй�6��Z�ܪ�f@m>	gu��!���D�W��+���;��� bu�t� `�5m���H��|-5�
��`or��u��ȹ���)����3@I��wr@ж�A�(��q٢�\��`�Rf��� �������`R��3�\��   h� ���wup?  �� ����I�f8>pq����Vf�z?�!  �l5@�+n07�X��l���ag��O�zI������W�p�2G�����ܼj�2��j2��s)�En0  .j".nG��{�̍e�+��  �!+T2/qh���0`o΃�t#J�q�fS��w�y�ީ/r�DHa_��p�)7�%������!b&$�.�n$y�%y�d^�`W�W�b�N� ���)����Ώ$�X�˚�Ҽ�@.��yI��i=\
  F^!��j�zy��C��cE��}�2Tz�k�*=�����g/�$�n��D��7�a��FI�d�X�\��^���Pp�0�+7	�`�f@   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/player.png-965fb12be218bfe81cbf4b66ef213928.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/player.png"
dest_files=[ "res://.import/player.png-965fb12be218bfe81cbf4b66ef213928.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST               �  WEBPRIFF�  WEBPVP8L�  /@��m$Irf��r����mۆ����\3h�H�s��Oர#�V�k8|��Cnd��;3�߉m��_@��		  	 ��#@ �D BA�7<��?|��<��o��� �4��@A`BY ϐ��x�cPqؒ��ٶ5fϝ��J��H���cRG:� ��������. Q��$(��S	�����f��~c멌��}���c���{���� �h�v����)uw���C��p#u7���!���#�@`e}CM�R���cu3�{�k�_��R�0t��ٝEX�^ˆE��,C��~�=�y���t�]�H&����e�螘��>�/��_�=��T;pLD�b�2e��&[�t����.�5<>؀�E"� ��N �-M��Y0$��!?��d��'� ��N��8�������Ջ�%�kYӬ�U��!�r!��!�$��BZ����f��[        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/proyectile_player.png-132abea7930406785970417e0c2cdfbf.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/proyectile_player.png"
dest_files=[ "res://.import/proyectile_player.png-132abea7930406785970417e0c2cdfbf.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST               z   WEBPRIFFn   WEBPVP8Lb   /�0Ӷ�F�v� ���N#�V���<�1?�OSd-��  �Q �P#r��%Q(�ވN�B��ģ�$#�ht��F��  T�L�����dV+#           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/proyectile_turret.png-f1f226341636bbe57dd638c8e94ffde6.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/proyectile_turret.png"
dest_files=[ "res://.import/proyectile_turret.png-f1f226341636bbe57dd638c8e94ffde6.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST!   A            �  WEBPRIFF�  WEBPVP8L�  /  ��BD�c؄@ ɟr�Դm�H�#�g�c��X����$���y���m�l۶�f5���m�?�{f�l3m*������y�+�͹ɶU۶m+�\Z�s�ͤ��̼w ����� 1o}Gck;̼���{+ٷm۪$I��Z�s���s�#s��
38<1��]
( ��V3�m��mm�шF\Ze5�W�kf��¶mK�|�ǿj���[��p��\(H�%���0Boq
��#��PB;TH �? ����Q���D9��P(`X� �qD唷���T��������* &ذ�U��Ui�Z�� EA�	(d�1�,R� �	(v �� �mPŌ�-4�a#��Ԃ@3�r
 )*r��5����ʀ\d�-�*�"�!��f��� Pn�	��
AHɰTT�\���9���:�U�̢�RQ峊T�DQ8�Ec��B"���2
@�A�bPʀ�#o���D�D�a�-7P�% ���\`F(((@Q� N�92�`"u��	dCF�� Pn�ì �D�`��
�|����@��Gt7�"gɊT�0`	&�"�e	�)Z&P�RGa���IQY���T^$��L��[A�T5��A�H(F���5LP��2�@Z�&�R����)��Ԃb�ZX�)�`pd�@	.b�-
�S�d+SQ�-���r�QF�DFZВ�	� (� �P����5~F5���#X}�\��#��Ũ�a*#��2�"���
��(L� �&�HE�������&,��x��D���:nf5rρ�*
�z��Vn�
@F�2Pr5t���-��P{Gs	ky��Y�<,�b�M�s4=ǌ8�%e�G�Ұ��
��Qv E=����3z�n���o�w�ʆO�@���P���Ĩc�#Rc���^�8�1ӛԪ,Ph1ju�ꭉs�5������x킓��]w?ح.���QS��z���t��q0�w�8��w�.;ge��( ������<�E��J\�r�We�
+a�U�v�ߟ��FM4��k�!
��N��Tg�#�hOL�ժ֜8��H"�@��4[D15� ��R�>ћ�)� ���Z,t;�C�]ov�i��݇��/֣��6��a��� e
 �4x"Oó��x�|U1�
��-  Wq+Nt��G������2Z,��<��� L �(��y��r����<1�b�wD�i!��6�r�T�Xzօ�}r7��$2���#ZN�`�u�7�=\�����@!"P��7��-�r�����K��g�!  C��w������e&�ٚz>�Y��`� �*/�CU��9KTBXpf�B��nd�
�����9^?Кz���l1@+Z0�FH�ٰ�7���V֐���B-(PFAQ�x�{�1/c������ .! �	 f����F4D��P � E*rGdx��¡�[-����:��-]E��P`K*���oYD¨0�A�S	���&�����x�����In͖m�B&�HU"T�)OP �  �h1�f�c�6z�K��8�w���qInN:��A %�@���1J�(!+8A
F�L�o��x4���mT1���,h����-�,��`�aa{��) !�b�
E��W���}�9clӏx�V.������T*��  � �ʈ 
Q�0Ql����t���y��r��Ē�˓��]^��͞K����y#�p�fy��\��	 P�BKFa�	��E���n��x����c:��ֵ=�fl3��[�a;�P@��-�"  䳠�Q�A���s��8��0��=y����S���R[���{�9��-  Z@ ��(&�A�A&B�T������8���b������[��o�fS$��ZR"�-�(�P$ �[2BP�G��&lG��������Ba����1�������r �O�0�� J*� Ld��(! �r!P�(�r�Y2� ^�@`-S�2 ! F֑8�U
��SA9:���ȅ	�D�ndՀ�%l�(#K��z��8c
KtJl?�I-�	���]��3f:v3���)F��[��e�����,��x�ճ:׭�FZw���Q^���q㽊�h4��r�AP=Fׅ�W�w��x�ɲi�����vJ���9s�a��xy6X�2���XW�۱l"�e�}�Ө��(��1;�mV�˪������r�_�e�:o�\���D��/uE�)�����W��:�{��� ��]�^���E�#E�I,���à��\Y��%*4%/��~�t��c�lO�p����6˨�2�1�Z�Ǝ؍����P����P�)�������r���e���$ҁ�mh6��	EB�Aa�0QvxZƑ�44*'�}����_����z0���&���+)W��*��]�*�bR�  �
-*�8K��'p>�a �.��)�}��NlS��-�F)�rQ� A0"�`B �hq�Σ`����W ���`��͋��X�I�n�A΅Yh��R�jA� `d P X�y������ ��=�j0O ͋+�3o?mΕ�U>w�(d�� u��"!"(R�R���gV}�Ӊ��m8\ c��Sr�u������dx�	P�p �	)&�B��p���*'^�n�>��#Pr ��'�n�1E�]�M�+*��-��
�E�x�������毼[��O�� /o  �� ��,�p�kwK�{�l��B�o	Q@�2l��ss��:o�϶��������xu�������-���j���W���Q��"ÑFB�B �,Ok>���O�LW|�] � ��w�H����mv�ۭ�>/t0�
W (`��Bqy:�����|����n��;�ݟ�֑�� (=>v��k� �@���<�^���<}�5@�C��|�ǿq� �� h��k[x����`6R�������:���>�ϟ #O�qD�Ǿ�wG��_�Ƒ�w������e2̢�Q�K�-�<� p�g�p��|� ��?������s �������}w�{n��Q�禽���t{� �
�(��� ��W��cGբ7~@C#|{���kxgK��� ���C�5���q����* |ۣeǯ�v3��� �G�̷��D|����j�m  ��U G��������?rt�'��o �
?�� �Q�f   |�W8&   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/turret.png-54022cbf2106bc383902c76b01ff8de2.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/turret.png"
dest_files=[ "res://.import/turret.png-54022cbf2106bc383902c76b01ff8de2.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC         "   �      �����Ӷ�   �������������Ķ�   ������������Ķ��   �������ﶶ��   ��������ض��   ���������Ӷ�   ��������Ķ��   �������������ض�   ��������Ҷ��   ��������������ض   ������¶   ����¶��   ���������������Ŷ���   ����׶��   �������ض���   �����������¶���   �����������¶���   ���������������¶���   ��������¶��   ������Ӷ   �������������������������¶�   ���������¶�   �����������Ҷ���   ���������Ӷ�     HD      timeout       _on_lifetime_timer_timeout                     
                                 	   ,   
   3      9      =      H      N      O      V      ^      _      `      a      b      o      y      }      ~            �      �      �      �      �       �   !   �   "   3YY5;�  W�  YY8P�  Q;�  V�  YY;�  V�  YY0�  P�  R�  V�  R�  V�  QV�  �  T�  PQ�  T�  �  �  �	  �  �  �  T�
  P�  RR�  Q�  �  T�  PQYY0�  P�  QV�  �  �  �  �  �  �  �  �  �  ;�  V�  �  PQT�  PQ�  &�  T�  P�	  QV�  �  PQYYY0�  PQV�  �  PQYY0�  PQV�  �  PQT�  PQ�  �  PQ�  Y`          [gd_scene load_steps=2 format=2]

[ext_resource path="res://entities/Projectile.gd" type="Script" id=1]

[node name="Projectile" type="Sprite"]
script = ExtResource( 1 )

[node name="LifetimeTimer" type="Timer" parent="."]
 GDSC         $   �      �����Ӷ�   ������������ض��   �����������ض���   ���������Ķ�   ��������Ķ��   ����������Ӷ   ���������������Ӷ���   �������������������Ķ���   �����¶�   ���ӄ�   �����϶�   ������¶   ���������Ӷ�   ��������Ķ��   ���������Ŷ�   ��������Ҷ��   ��������������ض   �������������Ķ�   ������������Ӷ��   �������Ӷ���   �����������ٶ���    �����������������������������Ҷ�   ���϶���   ����¶��    ����������������������������Ҷ��   ���ƶ���      timeout       fire_at_player                         
                                 	   "   
   #      )      4      5      @      G      K      Q      R      S      Y      b      x      y      z      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   3YY5;�  W�  Y5;�  W�  YY8P�  Q;�  YY;�  Y;�  V�	  YY0�
  PQV�  �  T�  PRR�  Q�  Y0�  P�  R�  R�  QV�  �  T�  PQ�  �  �  �  T�  �  �  YY0�  PQV�  ;�  �  T�  PQ�  �  T�  P�  R�  T�  R�  T�  T�  P�  T�  QQYYY0�  P�  QV�  &�  �  V�  �  �  �  �  T�  PQYYY0�  P�  QV�  &�  �  V�  �  �  �  �  T�  PQ�  Y`               [gd_scene load_steps=5 format=2]

[ext_resource path="res://assets/textures/turret.png" type="Texture" id=1]
[ext_resource path="res://entities/enemies/Turret.gd" type="Script" id=2]
[ext_resource path="res://entities/enemies/TurretProjectile.tscn" type="PackedScene" id=3]

[sub_resource type="CircleShape2D" id=1]
radius = 313.193

[node name="Turret" type="Sprite"]
position = Vector2( 104, 87 )
texture = ExtResource( 1 )
script = ExtResource( 2 )
projectile_scene = ExtResource( 3 )

[node name="FireTimer" type="Timer" parent="."]

[node name="FirePosition" type="Position2D" parent="."]
position = Vector2( 0, -30.0339 )

[node name="DetectionArea" type="Area2D" parent="."]
collision_layer = 0
collision_mask = 2

[node name="CollisionShape2D" type="CollisionShape2D" parent="DetectionArea"]
position = Vector2( -1, 0 )
shape = SubResource( 1 )

[connection signal="body_entered" from="DetectionArea" to="." method="_on_DetectionArea_body_entered"]
[connection signal="body_exited" from="DetectionArea" to="." method="_on_DetectionArea_body_exited"]
              [gd_scene load_steps=3 format=2]

[ext_resource path="res://entities/Projectile.tscn" type="PackedScene" id=1]
[ext_resource path="res://assets/textures/proyectile_turret.png" type="Texture" id=2]

[node name="TurretProjectile" instance=ExtResource( 1 )]
texture = ExtResource( 2 )
VELOCITY = 400.0

[node name="LifetimeTimer" parent="." index="0"]
wait_time = 3.0
        GDSC            l      ���Ӷ���   ����������Ӷ   �����������Ӷ���   �����϶�   ������������Ҷ��   ���������Ӷ�   �����������¶���   �����������¶���   ���������������¶���   ߶��   ��������������Ӷ   �������Ӷ���   ���������Ŷ�   �������ض���   ζ��   ��Ҷ   ϶��   
   initialize                 2                      
                                 	   *   
   0      9      :      ^      _      j      3YY8P�  Q;�  YY0�  PQV�  �  PQ�  Y0�  PQV�  ;�  V�  �  PQT�  PQ�  )�	  �  V�  ;�
  �  T�  PQ�  �  ;�  V�  �  P�(  P�  T�  T�  R�  T�  T�  QR�(  P�  T�  T�  �  R�  QQ�  �  �
  T�  PR�  RQY`              GDSC             >      �����Ӷ�   ���������ƶ�   ��������ƶ��   ����������Ӷ   ���������������Ӷ���   �������������������Ķ���   ���Ӷ���   ������������Ӷ��   �������Ӷ���   ���������Ӷ�   ��������������ض   �����������ٶ���                   
                                 	      
   (      <      3YY5;�  W�  YY8P�  Q;�  V�  YY;�  YY0�  PQV�  ;�  �  T�  PQ�  �  T�	  P�  R�  T�
  R�
  T�  P�  T�
  QQY`   GDSC         0   $     ������������τ�   �����Ķ�   �����ض�   �����ض�   ����������������   ������������ⶶ�   ���������������   ����������   �������   �������϶���   ��������   �������������������Ķ���   ���������Ӷ�   ���������¶�   �������������ض�   ������������������������ض��   ������¶   ����¶��   ���������������������Ҷ�   ���������¶�   ���Ӷ���   �������������������ض���   ����������������Ҷ��   ζ��   ϶��   ���������������Ŷ���   ����׶��   �������������Ӷ�   �涶     �A     D  �������?   �              fire_cannon        
   move_right     	   move_left                      jump                                           $      /   	   9   
   D      E      N      Q      R      Y      _      e      f      l      m      v      }      ~            �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (     )     *     +     ,     -     .   !  /   "  0   3Y2�  YY5;�  W�  YY8P�  Q;�  V�  Y8P�  Q;�  V�  �  Y8P�  Q;�  V�  �  Y8P�  Q;�  �  Y8P�  Q;�  V�  �  YY;�	  V�  �  T�
  Y;�  YY0�  P�  QV�  T�  �  �  �  T�  �  YY0�  PQV�  �  ;�  V�  �  PQ�  �  T�  P�  Q�  �  �  &�  T�  P�  QV�  &�  �  V�  �  �  PQ�  �  T�  �  �  �  T�  PQ�  �  �  ;�  V�  �  P�  T�  P�  QQ�  P�  T�  P�  QQ�  �  &�  �	  V�  �	  T�  �5  P�	  T�  P�  �  QR�  R�  Q�  (V�  �	  T�  �  P�	  T�  R�	  R�  Q&�  P�	  T�  Q�
  (�	  �  �  &�  T�  P�  QV�  �	  T�  �  YY0�  P�  QV�  �  PQ�  �  �	  T�  �  �  �  P�	  R�  T�  Q�  Y`         [gd_scene load_steps=7 format=2]

[ext_resource path="res://entities/player/Player.gd" type="Script" id=1]
[ext_resource path="res://assets/textures/player.png" type="Texture" id=2]
[ext_resource path="res://assets/textures/cannon.png" type="Texture" id=3]
[ext_resource path="res://entities/player/Cannon.gd" type="Script" id=4]
[ext_resource path="res://entities/player/PlayerProjectile.tscn" type="PackedScene" id=5]

[sub_resource type="CapsuleShape2D" id=1]
radius = 28.0635
height = 26.2038

[node name="Player" type="KinematicBody2D"]
position = Vector2( -0.0635071, 0.165405 )
collision_layer = 2
script = ExtResource( 1 )

[node name="Body" type="Sprite" parent="."]
texture = ExtResource( 2 )

[node name="Cannon" type="Sprite" parent="."]
position = Vector2( -1.93649, -28.1654 )
scale = Vector2( 1.50093, 1.36571 )
texture = ExtResource( 3 )
script = ExtResource( 4 )
projectile_scene = ExtResource( 5 )

[node name="CannonTip" type="Position2D" parent="Cannon"]
position = Vector2( 16.6563, 3.8147e-06 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
           [gd_scene load_steps=3 format=2]

[ext_resource path="res://entities/Projectile.tscn" type="PackedScene" id=1]
[ext_resource path="res://assets/textures/proyectile_player.png" type="Texture" id=2]

[node name="PlayerProjectile" instance=ExtResource( 1 )]
texture = ExtResource( 2 )
               GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [gd_scene load_steps=3 format=2]

[ext_resource path="res://assets/textures/floor.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 399, 85 )

[node name="Floor" type="StaticBody2D"]

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 12.1212, 2.62121 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
       [remap]

path="res://Main.gdc"
 [remap]

path="res://entities/Projectile.gdc"
  [remap]

path="res://entities/enemies/Turret.gdc"
              [remap]

path="res://entities/enemies/TurretsSpawner.gdc"
      [remap]

path="res://entities/player/Cannon.gdc"
               [remap]

path="res://entities/player/Player.gdc"
               �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes�                     class         Player        language      GDScript      path      res://entities/player/Player.gd       base      KinematicBody2D    _global_script_class_icons                Player            application/config/name          Proyecto Godot - Clase 4   application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     display/window/size/width            display/window/stretch/mode         2d     display/window/stretch/aspect         keep   input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/fire_cannon�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      
   input/jump              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      physical_scancode             unicode           echo          script      )   rendering/environment/default_environment          res://default_env.tres          