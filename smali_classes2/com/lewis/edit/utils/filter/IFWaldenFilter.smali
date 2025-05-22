.class public Lcom/lewis/edit/utils/filter/IFWaldenFilter;
.super Lcom/lewis/edit/utils/filter/IFImageFilter;
.source "IFWaldenFilter.java"


# static fields
.field private static final SHADER:Ljava/lang/String; = "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; //map\n uniform sampler2D inputImageTexture3; //vigMap\n \n void main()\n {\n     \n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     \n     texel = vec3(\n                  texture2D(inputImageTexture2, vec2(texel.r, .16666)).r,\n                  texture2D(inputImageTexture2, vec2(texel.g, .5)).g,\n                  texture2D(inputImageTexture2, vec2(texel.b, .83333)).b);\n     \n     vec2 tc = (2.0 * textureCoordinate) - 1.0;\n     float d = dot(tc, tc);\n     vec2 lookup = vec2(d, texel.r);\n     texel.r = texture2D(inputImageTexture3, lookup).r;\n     lookup.y = texel.g;\n     texel.g = texture2D(inputImageTexture3, lookup).g;\n     lookup.y = texel.b;\n     texel.b\t= texture2D(inputImageTexture3, lookup).b;\n     \n     gl_FragColor = vec4(texel, 1.0);\n }\n"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; //map\n uniform sampler2D inputImageTexture3; //vigMap\n \n void main()\n {\n     \n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     \n     texel = vec3(\n                  texture2D(inputImageTexture2, vec2(texel.r, .16666)).r,\n                  texture2D(inputImageTexture2, vec2(texel.g, .5)).g,\n                  texture2D(inputImageTexture2, vec2(texel.b, .83333)).b);\n     \n     vec2 tc = (2.0 * textureCoordinate) - 1.0;\n     float d = dot(tc, tc);\n     vec2 lookup = vec2(d, texel.r);\n     texel.r = texture2D(inputImageTexture3, lookup).r;\n     lookup.y = texel.g;\n     texel.g = texture2D(inputImageTexture3, lookup).g;\n     lookup.y = texel.b;\n     texel.b\t= texture2D(inputImageTexture3, lookup).b;\n     \n     gl_FragColor = vec4(texel, 1.0);\n }\n"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/lewis/edit/utils/filter/IFWaldenFilter;->setRes()V

    return-void
.end method

.method private setRes()V
    .locals 1

    .line 47
    sget v0, Lcom/lewis/edit/R$drawable;->walden_map:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFWaldenFilter;->addInputTexture(I)V

    .line 48
    sget v0, Lcom/lewis/edit/R$drawable;->vignette_map:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFWaldenFilter;->addInputTexture(I)V

    return-void
.end method
