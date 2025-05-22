.class public Lcom/appunite/ffmpeg/FpsCounter;
.super Ljava/lang/Object;
.source "FpsCounter.java"


# instance fields
.field private counter:I

.field private final frameCount:I

.field start:Z

.field private startTime:J

.field private tick:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/appunite/ffmpeg/FpsCounter;->counter:I

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/appunite/ffmpeg/FpsCounter;->start:Z

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/appunite/ffmpeg/FpsCounter;->startTime:J

    const-string v0, "- fps"

    .line 30
    iput-object v0, p0, Lcom/appunite/ffmpeg/FpsCounter;->tick:Ljava/lang/String;

    .line 33
    iput p1, p0, Lcom/appunite/ffmpeg/FpsCounter;->frameCount:I

    return-void
.end method


# virtual methods
.method public tick()Ljava/lang/String;
    .locals 8

    .line 37
    iget-boolean v0, p0, Lcom/appunite/ffmpeg/FpsCounter;->start:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    iput-boolean v1, p0, Lcom/appunite/ffmpeg/FpsCounter;->start:Z

    .line 39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appunite/ffmpeg/FpsCounter;->startTime:J

    .line 42
    :cond_0
    iget v0, p0, Lcom/appunite/ffmpeg/FpsCounter;->counter:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/appunite/ffmpeg/FpsCounter;->counter:I

    iget v2, p0, Lcom/appunite/ffmpeg/FpsCounter;->frameCount:I

    if-ge v0, v2, :cond_1

    .line 43
    iget-object v0, p0, Lcom/appunite/ffmpeg/FpsCounter;->tick:Ljava/lang/String;

    return-object v0

    .line 46
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 47
    iget v0, p0, Lcom/appunite/ffmpeg/FpsCounter;->frameCount:I

    int-to-double v4, v0

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    mul-double v4, v4, v6

    iget-wide v6, p0, Lcom/appunite/ffmpeg/FpsCounter;->startTime:J

    sub-long v6, v2, v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    .line 49
    iput-wide v2, p0, Lcom/appunite/ffmpeg/FpsCounter;->startTime:J

    .line 50
    iput v1, p0, Lcom/appunite/ffmpeg/FpsCounter;->counter:I

    .line 52
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.2f fps"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appunite/ffmpeg/FpsCounter;->tick:Ljava/lang/String;

    return-object v0
.end method
