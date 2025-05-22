.class public Lcom/lewis/edit/utils/filter/IFXprollFilter;
.super Lcom/lewis/edit/utils/filter/IFImageFilter;
.source "IFXprollFilter.java"


# static fields
.field private static final SHADER:Ljava/lang/String; = "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; //map\n uniform sampler2D inputImageTexture3; //vigMap\n \n void main()\n {\n     \n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     \n     vec2 tc = (2.0 * textureCoordinate) - 1.0;\n     float d = dot(tc, tc);\n     vec2 lookup = vec2(d, texel.r);\n     texel.r = texture2D(inputImageTexture3, lookup).r;\n     lookup.y = texel.g;\n     texel.g = texture2D(inputImageTexture3, lookup).g;\n     lookup.y = texel.b;\n     texel.b\t= texture2D(inputImageTexture3, lookup).b;\n     \n     vec2 red = vec2(texel.r, 0.16666);\n     vec2 green = vec2(texel.g, 0.5);\n     vec2 blue = vec2(texel.b, .83333);\n     texel.r = texture2D(inputImageTexture2, red).r;\n     texel.g = texture2D(inputImageTexture2, green).g;\n     texel.b = texture2D(inputImageTexture2, blue).b;\n     \n     gl_FragColor = vec4(texel, 1.0);\n     \n }\n"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; //map\n uniform sampler2D inputImageTexture3; //vigMap\n \n void main()\n {\n     \n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     \n     vec2 tc = (2.0 * textureCoordinate) - 1.0;\n     float d = dot(tc, tc);\n     vec2 lookup = vec2(d, texel.r);\n     texel.r = texture2D(inputImageTexture3, lookup).r;\n     lookup.y = texel.g;\n     texel.g = texture2D(inputImageTexture3, lookup).g;\n     lookup.y = texel.b;\n     texel.b\t= texture2D(inputImageTexture3, lookup).b;\n     \n     vec2 red = vec2(texel.r, 0.16666);\n     vec2 green = vec2(texel.g, 0.5);\n     vec2 blue = vec2(texel.b, .83333);\n     texel.r = texture2D(inputImageTexture2, red).r;\n     texel.g = texture2D(inputImageTexture2, green).g;\n     texel.b = texture2D(inputImageTexture2, blue).b;\n     \n     gl_FragColor = vec4(texel, 1.0);\n     \n }\n"

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/lewis/edit/utils/filter/IFXprollFilter;->setRes()V

    return-void
.end method

.method private setRes()V
    .locals 1

    .line 50
    sget v0, Lcom/lewis/edit/R$drawable;->xpro_map:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFXprollFilter;->addInputTexture(I)V

    .line 51
    sget v0, Lcom/lewis/edit/R$drawable;->vignette_map:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFXprollFilter;->addInputTexture(I)V

    return-void
.end method
