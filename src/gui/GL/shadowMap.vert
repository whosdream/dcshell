/*

// this is the original code

varying vec4 ShadowCoord;
varying vec4 diffuse,ambient;
varying vec3 normal,lightDir,halfVector;
	
void main()
{	
	// phone shading 
	normal = normalize(gl_NormalMatrix * gl_Normal);
	lightDir = normalize(vec3(gl_LightSource[0].position));
	halfVector = normalize(gl_LightSource[0].halfVector.xyz);
	diffuse = gl_FrontMaterial.diffuse * gl_LightSource[0].diffuse;
	ambient = gl_FrontMaterial.ambient * gl_LightSource[0].ambient;
	ambient += gl_LightModel.ambient * gl_FrontMaterial.ambient;

	gl_Position = ftransform();

	// shadow map
	ShadowCoord= gl_TextureMatrix[0] * gl_Vertex;
	gl_FrontColor = gl_Color;
}

*/

// this is generated from xxd -i 

unsigned char shadowMap_vert[] = {
  0x76, 0x61, 0x72, 0x79, 0x69, 0x6e, 0x67, 0x20, 0x76, 0x65, 0x63, 0x34,
  0x20, 0x53, 0x68, 0x61, 0x64, 0x6f, 0x77, 0x43, 0x6f, 0x6f, 0x72, 0x64,
  0x3b, 0x0d, 0x0a, 0x76, 0x61, 0x72, 0x79, 0x69, 0x6e, 0x67, 0x20, 0x76,
  0x65, 0x63, 0x34, 0x20, 0x64, 0x69, 0x66, 0x66, 0x75, 0x73, 0x65, 0x2c,
  0x61, 0x6d, 0x62, 0x69, 0x65, 0x6e, 0x74, 0x3b, 0x0d, 0x0a, 0x76, 0x61,
  0x72, 0x79, 0x69, 0x6e, 0x67, 0x20, 0x76, 0x65, 0x63, 0x33, 0x20, 0x6e,
  0x6f, 0x72, 0x6d, 0x61, 0x6c, 0x2c, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x44,
  0x69, 0x72, 0x2c, 0x68, 0x61, 0x6c, 0x66, 0x56, 0x65, 0x63, 0x74, 0x6f,
  0x72, 0x3b, 0x0d, 0x0a, 0x09, 0x0d, 0x0a, 0x76, 0x6f, 0x69, 0x64, 0x20,
  0x6d, 0x61, 0x69, 0x6e, 0x28, 0x29, 0x0d, 0x0a, 0x7b, 0x09, 0x0d, 0x0a,
  0x09, 0x2f, 0x2f, 0x20, 0x70, 0x68, 0x6f, 0x6e, 0x65, 0x20, 0x73, 0x68,
  0x61, 0x64, 0x69, 0x6e, 0x67, 0x20, 0x0d, 0x0a, 0x09, 0x6e, 0x6f, 0x72,
  0x6d, 0x61, 0x6c, 0x20, 0x3d, 0x20, 0x6e, 0x6f, 0x72, 0x6d, 0x61, 0x6c,
  0x69, 0x7a, 0x65, 0x28, 0x67, 0x6c, 0x5f, 0x4e, 0x6f, 0x72, 0x6d, 0x61,
  0x6c, 0x4d, 0x61, 0x74, 0x72, 0x69, 0x78, 0x20, 0x2a, 0x20, 0x67, 0x6c,
  0x5f, 0x4e, 0x6f, 0x72, 0x6d, 0x61, 0x6c, 0x29, 0x3b, 0x0d, 0x0a, 0x09,
  0x6c, 0x69, 0x67, 0x68, 0x74, 0x44, 0x69, 0x72, 0x20, 0x3d, 0x20, 0x6e,
  0x6f, 0x72, 0x6d, 0x61, 0x6c, 0x69, 0x7a, 0x65, 0x28, 0x76, 0x65, 0x63,
  0x33, 0x28, 0x67, 0x6c, 0x5f, 0x4c, 0x69, 0x67, 0x68, 0x74, 0x53, 0x6f,
  0x75, 0x72, 0x63, 0x65, 0x5b, 0x30, 0x5d, 0x2e, 0x70, 0x6f, 0x73, 0x69,
  0x74, 0x69, 0x6f, 0x6e, 0x29, 0x29, 0x3b, 0x0d, 0x0a, 0x09, 0x68, 0x61,
  0x6c, 0x66, 0x56, 0x65, 0x63, 0x74, 0x6f, 0x72, 0x20, 0x3d, 0x20, 0x6e,
  0x6f, 0x72, 0x6d, 0x61, 0x6c, 0x69, 0x7a, 0x65, 0x28, 0x67, 0x6c, 0x5f,
  0x4c, 0x69, 0x67, 0x68, 0x74, 0x53, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x5b,
  0x30, 0x5d, 0x2e, 0x68, 0x61, 0x6c, 0x66, 0x56, 0x65, 0x63, 0x74, 0x6f,
  0x72, 0x2e, 0x78, 0x79, 0x7a, 0x29, 0x3b, 0x0d, 0x0a, 0x09, 0x64, 0x69,
  0x66, 0x66, 0x75, 0x73, 0x65, 0x20, 0x3d, 0x20, 0x67, 0x6c, 0x5f, 0x46,
  0x72, 0x6f, 0x6e, 0x74, 0x4d, 0x61, 0x74, 0x65, 0x72, 0x69, 0x61, 0x6c,
  0x2e, 0x64, 0x69, 0x66, 0x66, 0x75, 0x73, 0x65, 0x20, 0x2a, 0x20, 0x67,
  0x6c, 0x5f, 0x4c, 0x69, 0x67, 0x68, 0x74, 0x53, 0x6f, 0x75, 0x72, 0x63,
  0x65, 0x5b, 0x30, 0x5d, 0x2e, 0x64, 0x69, 0x66, 0x66, 0x75, 0x73, 0x65,
  0x3b, 0x0d, 0x0a, 0x09, 0x61, 0x6d, 0x62, 0x69, 0x65, 0x6e, 0x74, 0x20,
  0x3d, 0x20, 0x67, 0x6c, 0x5f, 0x46, 0x72, 0x6f, 0x6e, 0x74, 0x4d, 0x61,
  0x74, 0x65, 0x72, 0x69, 0x61, 0x6c, 0x2e, 0x61, 0x6d, 0x62, 0x69, 0x65,
  0x6e, 0x74, 0x20, 0x2a, 0x20, 0x67, 0x6c, 0x5f, 0x4c, 0x69, 0x67, 0x68,
  0x74, 0x53, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x5b, 0x30, 0x5d, 0x2e, 0x61,
  0x6d, 0x62, 0x69, 0x65, 0x6e, 0x74, 0x3b, 0x0d, 0x0a, 0x09, 0x61, 0x6d,
  0x62, 0x69, 0x65, 0x6e, 0x74, 0x20, 0x2b, 0x3d, 0x20, 0x67, 0x6c, 0x5f,
  0x4c, 0x69, 0x67, 0x68, 0x74, 0x4d, 0x6f, 0x64, 0x65, 0x6c, 0x2e, 0x61,
  0x6d, 0x62, 0x69, 0x65, 0x6e, 0x74, 0x20, 0x2a, 0x20, 0x67, 0x6c, 0x5f,
  0x46, 0x72, 0x6f, 0x6e, 0x74, 0x4d, 0x61, 0x74, 0x65, 0x72, 0x69, 0x61,
  0x6c, 0x2e, 0x61, 0x6d, 0x62, 0x69, 0x65, 0x6e, 0x74, 0x3b, 0x0d, 0x0a,
  0x0d, 0x0a, 0x09, 0x67, 0x6c, 0x5f, 0x50, 0x6f, 0x73, 0x69, 0x74, 0x69,
  0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x66, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x66,
  0x6f, 0x72, 0x6d, 0x28, 0x29, 0x3b, 0x0d, 0x0a, 0x0d, 0x0a, 0x09, 0x2f,
  0x2f, 0x20, 0x73, 0x68, 0x61, 0x64, 0x6f, 0x77, 0x20, 0x6d, 0x61, 0x70,
  0x0d, 0x0a, 0x09, 0x53, 0x68, 0x61, 0x64, 0x6f, 0x77, 0x43, 0x6f, 0x6f,
  0x72, 0x64, 0x3d, 0x20, 0x67, 0x6c, 0x5f, 0x54, 0x65, 0x78, 0x74, 0x75,
  0x72, 0x65, 0x4d, 0x61, 0x74, 0x72, 0x69, 0x78, 0x5b, 0x30, 0x5d, 0x20,
  0x2a, 0x20, 0x67, 0x6c, 0x5f, 0x56, 0x65, 0x72, 0x74, 0x65, 0x78, 0x3b,
  0x0d, 0x0a, 0x09, 0x67, 0x6c, 0x5f, 0x46, 0x72, 0x6f, 0x6e, 0x74, 0x43,
  0x6f, 0x6c, 0x6f, 0x72, 0x20, 0x3d, 0x20, 0x67, 0x6c, 0x5f, 0x43, 0x6f,
  0x6c, 0x6f, 0x72, 0x3b, 0x0d, 0x0a, 0x7d, 0x0d, 0x0a
};

unsigned int shadowMap_vert_len = 633;