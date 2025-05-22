.class public Lcom/lewis/edit/utils/mp4/OesGLFilter;
.super Lcom/lewis/edit/utils/mp4/BaseGLFilter;
.source "OesGLFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 aVertexCo;\nattribute vec2 aTextureCo;\n\nuniform mat4 uVertexMatrix;\nuniform mat4 uTextureMatrix;\n\nvarying vec2 vTextureCo;\n\nvoid main(){\n    gl_Position = uVertexMatrix*aVertexCo;\n    vTextureCo = (uTextureMatrix * vec4(aTextureCo, 0, 1)).xy;\n}"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n\nvarying vec2 vTextureCo;\n\nuniform samplerExternalOES uTexture;\n\nvoid main() {\n    gl_FragColor = texture2D(uTexture, vTextureCo);\n}"

    .line 14
    invoke-direct {p0, v0, v1}, Lcom/lewis/edit/utils/mp4/BaseGLFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindTexture(I)V
    .locals 1

    const v0, 0x84c0

    .line 39
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    .line 40
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 41
    iget p1, p0, Lcom/lewis/edit/utils/mp4/OesGLFilter;->mGLTexture:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method
