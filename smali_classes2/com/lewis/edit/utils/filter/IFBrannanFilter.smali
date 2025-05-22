.class public Lcom/lewis/edit/utils/filter/IFBrannanFilter;
.super Lcom/lewis/edit/utils/filter/IFImageFilter;
.source "IFBrannanFilter.java"


# static fields
.field private static final SHADER:Ljava/lang/String; = "\n precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;  //process\n uniform sampler2D inputImageTexture3;  //blowout\n uniform sampler2D inputImageTexture4;  //contrast\n uniform sampler2D inputImageTexture5;  //luma\n uniform sampler2D inputImageTexture6;  //screen\n \n mat3 saturateMatrix = mat3(\n                            1.105150,\n                            -0.044850,\n                            -0.046000,\n                            -0.088050,\n                            1.061950,\n                            -0.089200,\n                            -0.017100,\n                            -0.017100,\n                            1.132900);\n \n vec3 luma = vec3(.3, .59, .11);\n \n void main()\n {\n     \n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     \n     vec2 lookup;\n     lookup.y = 0.5;\n     lookup.x = texel.r;\n     texel.r = texture2D(inputImageTexture2, lookup).r;\n     lookup.x = texel.g;\n     texel.g = texture2D(inputImageTexture2, lookup).g;\n     lookup.x = texel.b;\n     texel.b = texture2D(inputImageTexture2, lookup).b;\n     \n     texel = saturateMatrix * texel;\n     \n     \n     vec2 tc = (2.0 * textureCoordinate) - 1.0;\n     float d = dot(tc, tc);\n     vec3 sampled;\n     lookup.y = 0.5;\n     lookup.x = texel.r;\n     sampled.r = texture2D(inputImageTexture3, lookup).r;\n     lookup.x = texel.g;\n     sampled.g = texture2D(inputImageTexture3, lookup).g;\n     lookup.x = texel.b;\n     sampled.b = texture2D(inputImageTexture3, lookup).b;\n     float value = smoothstep(0.0, 1.0, d);\n     texel = mix(sampled, texel, value);\n     \n     lookup.x = texel.r;\n     texel.r = texture2D(inputImageTexture4, lookup).r;\n     lookup.x = texel.g;\n     texel.g = texture2D(inputImageTexture4, lookup).g;\n     lookup.x = texel.b;\n     texel.b = texture2D(inputImageTexture4, lookup).b;\n     \n     \n     lookup.x = dot(texel, luma);\n     texel = mix(texture2D(inputImageTexture5, lookup).rgb, texel, .5);\n\n     lookup.x = texel.r;\n     texel.r = texture2D(inputImageTexture6, lookup).r;\n     lookup.x = texel.g;\n     texel.g = texture2D(inputImageTexture6, lookup).g;\n     lookup.x = texel.b;\n     texel.b = texture2D(inputImageTexture6, lookup).b;\n     \n     gl_FragColor = vec4(texel, 1.0);\n }\n"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "\n precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;  //process\n uniform sampler2D inputImageTexture3;  //blowout\n uniform sampler2D inputImageTexture4;  //contrast\n uniform sampler2D inputImageTexture5;  //luma\n uniform sampler2D inputImageTexture6;  //screen\n \n mat3 saturateMatrix = mat3(\n                            1.105150,\n                            -0.044850,\n                            -0.046000,\n                            -0.088050,\n                            1.061950,\n                            -0.089200,\n                            -0.017100,\n                            -0.017100,\n                            1.132900);\n \n vec3 luma = vec3(.3, .59, .11);\n \n void main()\n {\n     \n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     \n     vec2 lookup;\n     lookup.y = 0.5;\n     lookup.x = texel.r;\n     texel.r = texture2D(inputImageTexture2, lookup).r;\n     lookup.x = texel.g;\n     texel.g = texture2D(inputImageTexture2, lookup).g;\n     lookup.x = texel.b;\n     texel.b = texture2D(inputImageTexture2, lookup).b;\n     \n     texel = saturateMatrix * texel;\n     \n     \n     vec2 tc = (2.0 * textureCoordinate) - 1.0;\n     float d = dot(tc, tc);\n     vec3 sampled;\n     lookup.y = 0.5;\n     lookup.x = texel.r;\n     sampled.r = texture2D(inputImageTexture3, lookup).r;\n     lookup.x = texel.g;\n     sampled.g = texture2D(inputImageTexture3, lookup).g;\n     lookup.x = texel.b;\n     sampled.b = texture2D(inputImageTexture3, lookup).b;\n     float value = smoothstep(0.0, 1.0, d);\n     texel = mix(sampled, texel, value);\n     \n     lookup.x = texel.r;\n     texel.r = texture2D(inputImageTexture4, lookup).r;\n     lookup.x = texel.g;\n     texel.g = texture2D(inputImageTexture4, lookup).g;\n     lookup.x = texel.b;\n     texel.b = texture2D(inputImageTexture4, lookup).b;\n     \n     \n     lookup.x = dot(texel, luma);\n     texel = mix(texture2D(inputImageTexture5, lookup).rgb, texel, .5);\n\n     lookup.x = texel.r;\n     texel.r = texture2D(inputImageTexture6, lookup).r;\n     lookup.x = texel.g;\n     texel.g = texture2D(inputImageTexture6, lookup).g;\n     lookup.x = texel.b;\n     texel.b = texture2D(inputImageTexture6, lookup).b;\n     \n     gl_FragColor = vec4(texel, 1.0);\n }\n"

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/lewis/edit/utils/filter/IFBrannanFilter;->setRes()V

    return-void
.end method

.method private setRes()V
    .locals 1

    .line 93
    sget v0, Lcom/lewis/edit/R$drawable;->brannan_process:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFBrannanFilter;->addInputTexture(I)V

    .line 94
    sget v0, Lcom/lewis/edit/R$drawable;->brannan_blowout:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFBrannanFilter;->addInputTexture(I)V

    .line 95
    sget v0, Lcom/lewis/edit/R$drawable;->brannan_contrast:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFBrannanFilter;->addInputTexture(I)V

    .line 96
    sget v0, Lcom/lewis/edit/R$drawable;->brannan_luma:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFBrannanFilter;->addInputTexture(I)V

    .line 97
    sget v0, Lcom/lewis/edit/R$drawable;->brannan_screen:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFBrannanFilter;->addInputTexture(I)V

    return-void
.end method
