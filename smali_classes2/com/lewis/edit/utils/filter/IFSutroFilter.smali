.class public Lcom/lewis/edit/utils/filter/IFSutroFilter;
.super Lcom/lewis/edit/utils/filter/IFImageFilter;
.source "IFSutroFilter.java"


# static fields
.field private static final SHADER:Ljava/lang/String; = "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; //sutroMap;\n uniform sampler2D inputImageTexture3; //sutroMetal;\n uniform sampler2D inputImageTexture4; //softLight\n uniform sampler2D inputImageTexture5; //sutroEdgeburn\n uniform sampler2D inputImageTexture6; //sutroCurves\n \n void main()\n {\n     \n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     \n     vec2 tc = (2.0 * textureCoordinate) - 1.0;\n     float d = dot(tc, tc);\n     vec2 lookup = vec2(d, texel.r);\n     texel.r = texture2D(inputImageTexture2, lookup).r;\n     lookup.y = texel.g;\n     texel.g = texture2D(inputImageTexture2, lookup).g;\n     lookup.y = texel.b;\n     texel.b\t= texture2D(inputImageTexture2, lookup).b;\n     \n     vec3 rgbPrime = vec3(0.1019, 0.0, 0.0); \n     float m = dot(vec3(.3, .59, .11), texel.rgb) - 0.03058;\n     texel = mix(texel, rgbPrime + m, 0.32);\n     \n     vec3 metal = texture2D(inputImageTexture3, textureCoordinate).rgb;\n     texel.r = texture2D(inputImageTexture4, vec2(metal.r, texel.r)).r;\n     texel.g = texture2D(inputImageTexture4, vec2(metal.g, texel.g)).g;\n     texel.b = texture2D(inputImageTexture4, vec2(metal.b, texel.b)).b;\n     \n     texel = texel * texture2D(inputImageTexture5, textureCoordinate).rgb;\n     \n     texel.r = texture2D(inputImageTexture6, vec2(texel.r, .16666)).r;\n     texel.g = texture2D(inputImageTexture6, vec2(texel.g, .5)).g;\n     texel.b = texture2D(inputImageTexture6, vec2(texel.b, .83333)).b;\n     \n     \n     gl_FragColor = vec4(texel, 1.0);\n }\n"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; //sutroMap;\n uniform sampler2D inputImageTexture3; //sutroMetal;\n uniform sampler2D inputImageTexture4; //softLight\n uniform sampler2D inputImageTexture5; //sutroEdgeburn\n uniform sampler2D inputImageTexture6; //sutroCurves\n \n void main()\n {\n     \n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     \n     vec2 tc = (2.0 * textureCoordinate) - 1.0;\n     float d = dot(tc, tc);\n     vec2 lookup = vec2(d, texel.r);\n     texel.r = texture2D(inputImageTexture2, lookup).r;\n     lookup.y = texel.g;\n     texel.g = texture2D(inputImageTexture2, lookup).g;\n     lookup.y = texel.b;\n     texel.b\t= texture2D(inputImageTexture2, lookup).b;\n     \n     vec3 rgbPrime = vec3(0.1019, 0.0, 0.0); \n     float m = dot(vec3(.3, .59, .11), texel.rgb) - 0.03058;\n     texel = mix(texel, rgbPrime + m, 0.32);\n     \n     vec3 metal = texture2D(inputImageTexture3, textureCoordinate).rgb;\n     texel.r = texture2D(inputImageTexture4, vec2(metal.r, texel.r)).r;\n     texel.g = texture2D(inputImageTexture4, vec2(metal.g, texel.g)).g;\n     texel.b = texture2D(inputImageTexture4, vec2(metal.b, texel.b)).b;\n     \n     texel = texel * texture2D(inputImageTexture5, textureCoordinate).rgb;\n     \n     texel.r = texture2D(inputImageTexture6, vec2(texel.r, .16666)).r;\n     texel.g = texture2D(inputImageTexture6, vec2(texel.g, .5)).g;\n     texel.b = texture2D(inputImageTexture6, vec2(texel.b, .83333)).b;\n     \n     \n     gl_FragColor = vec4(texel, 1.0);\n }\n"

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/lewis/edit/utils/filter/IFSutroFilter;->setRes()V

    return-void
.end method

.method private setRes()V
    .locals 1

    .line 61
    sget v0, Lcom/lewis/edit/R$drawable;->vignette_map:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFSutroFilter;->addInputTexture(I)V

    .line 62
    sget v0, Lcom/lewis/edit/R$drawable;->sutro_metal:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFSutroFilter;->addInputTexture(I)V

    .line 63
    sget v0, Lcom/lewis/edit/R$mipmap;->edit_soft_light:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFSutroFilter;->addInputTexture(I)V

    .line 64
    sget v0, Lcom/lewis/edit/R$drawable;->sutro_edge_burn:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFSutroFilter;->addInputTexture(I)V

    .line 65
    sget v0, Lcom/lewis/edit/R$drawable;->sutro_curves:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFSutroFilter;->addInputTexture(I)V

    return-void
.end method
