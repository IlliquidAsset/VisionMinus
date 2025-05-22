.class public Lcom/lewis/edit/utils/filter/IFImageFilter;
.super Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
.source "IFImageFilter.java"


# instance fields
.field private filterInputTextureUniform2:I

.field private filterInputTextureUniform3:I

.field private filterInputTextureUniform4:I

.field private filterInputTextureUniform5:I

.field private filterInputTextureUniform6:I

.field public filterSourceTexture2:I

.field public filterSourceTexture3:I

.field public filterSourceTexture4:I

.field public filterSourceTexture5:I

.field public filterSourceTexture6:I

.field private mContext:Landroid/content/Context;

.field private mResIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    .line 33
    invoke-direct {p0, v0, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 23
    iput p2, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture2:I

    .line 24
    iput p2, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture3:I

    .line 25
    iput p2, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture4:I

    .line 26
    iput p2, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture5:I

    .line 27
    iput p2, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture6:I

    .line 34
    iput-object p1, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/lewis/edit/utils/filter/IFImageFilter;)Landroid/content/Context;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lewis/edit/utils/filter/IFImageFilter;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->mResIds:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addInputTexture(I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->mResIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->mResIds:Ljava/util/List;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->mResIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initInputTexture()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->mResIds:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 136
    new-instance v0, Lcom/lewis/edit/utils/filter/IFImageFilter$1;

    invoke-direct {v0, p0}, Lcom/lewis/edit/utils/filter/IFImageFilter$1;-><init>(Lcom/lewis/edit/utils/filter/IFImageFilter;)V

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->mResIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 146
    new-instance v0, Lcom/lewis/edit/utils/filter/IFImageFilter$2;

    invoke-direct {v0, p0}, Lcom/lewis/edit/utils/filter/IFImageFilter$2;-><init>(Lcom/lewis/edit/utils/filter/IFImageFilter;)V

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->mResIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    .line 156
    new-instance v0, Lcom/lewis/edit/utils/filter/IFImageFilter$3;

    invoke-direct {v0, p0}, Lcom/lewis/edit/utils/filter/IFImageFilter$3;-><init>(Lcom/lewis/edit/utils/filter/IFImageFilter;)V

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->mResIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    .line 166
    new-instance v0, Lcom/lewis/edit/utils/filter/IFImageFilter$4;

    invoke-direct {v0, p0}, Lcom/lewis/edit/utils/filter/IFImageFilter$4;-><init>(Lcom/lewis/edit/utils/filter/IFImageFilter;)V

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->mResIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_5

    .line 176
    new-instance v0, Lcom/lewis/edit/utils/filter/IFImageFilter$5;

    invoke-direct {v0, p0}, Lcom/lewis/edit/utils/filter/IFImageFilter$5;-><init>(Lcom/lewis/edit/utils/filter/IFImageFilter;)V

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 49
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDestroy()V

    .line 51
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture2:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    new-array v4, v2, [I

    aput v0, v4, v1

    .line 54
    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 55
    iput v3, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture2:I

    .line 58
    :cond_0
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture3:I

    if-eq v0, v3, :cond_1

    new-array v4, v2, [I

    aput v0, v4, v1

    .line 61
    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 62
    iput v3, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture3:I

    .line 65
    :cond_1
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture4:I

    if-eq v0, v3, :cond_2

    new-array v4, v2, [I

    aput v0, v4, v1

    .line 68
    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 69
    iput v3, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture4:I

    .line 72
    :cond_2
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture5:I

    if-eq v0, v3, :cond_3

    new-array v4, v2, [I

    aput v0, v4, v1

    .line 75
    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 76
    iput v3, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture5:I

    .line 79
    :cond_3
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture6:I

    if-eq v0, v3, :cond_4

    new-array v4, v2, [I

    aput v0, v4, v1

    .line 82
    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 83
    iput v3, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture6:I

    :cond_4
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 4

    .line 90
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDrawArraysPre()V

    .line 92
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture2:I

    const/16 v1, 0xde1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const v0, 0x84c3

    .line 93
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 94
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture2:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 95
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterInputTextureUniform2:I

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 98
    :cond_0
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture3:I

    if-eq v0, v2, :cond_1

    const v0, 0x84c4

    .line 99
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 100
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture3:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 101
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterInputTextureUniform3:I

    const/4 v3, 0x4

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 104
    :cond_1
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture4:I

    if-eq v0, v2, :cond_2

    const v0, 0x84c5

    .line 105
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 106
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture4:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 107
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterInputTextureUniform4:I

    const/4 v3, 0x5

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 110
    :cond_2
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture5:I

    if-eq v0, v2, :cond_3

    const v0, 0x84c6

    .line 111
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 112
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture5:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 113
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterInputTextureUniform5:I

    const/4 v3, 0x6

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 116
    :cond_3
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture6:I

    if-eq v0, v2, :cond_4

    const v0, 0x84c7

    .line 117
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 118
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterSourceTexture6:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 119
    iget v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterInputTextureUniform6:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_4
    return-void
.end method

.method public onInit()V
    .locals 2

    .line 38
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInit()V

    .line 39
    invoke-virtual {p0}, Lcom/lewis/edit/utils/filter/IFImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputImageTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterInputTextureUniform2:I

    .line 40
    invoke-virtual {p0}, Lcom/lewis/edit/utils/filter/IFImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputImageTexture3"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterInputTextureUniform3:I

    .line 41
    invoke-virtual {p0}, Lcom/lewis/edit/utils/filter/IFImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputImageTexture4"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterInputTextureUniform4:I

    .line 42
    invoke-virtual {p0}, Lcom/lewis/edit/utils/filter/IFImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputImageTexture5"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterInputTextureUniform5:I

    .line 43
    invoke-virtual {p0}, Lcom/lewis/edit/utils/filter/IFImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputImageTexture6"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/filter/IFImageFilter;->filterInputTextureUniform6:I

    .line 45
    invoke-virtual {p0}, Lcom/lewis/edit/utils/filter/IFImageFilter;->initInputTexture()V

    return-void
.end method
