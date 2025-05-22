.class public Lcom/umeng/analytics/pro/br;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lcom/umeng/analytics/pro/ct;

.field private c:Lcom/umeng/analytics/pro/ch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/umeng/analytics/pro/cb$a;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/cb$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/br;-><init>(Lcom/umeng/analytics/pro/cj;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/cj;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/br;->a:Ljava/io/ByteArrayOutputStream;

    .line 46
    new-instance v1, Lcom/umeng/analytics/pro/ct;

    invoke-direct {v1, v0}, Lcom/umeng/analytics/pro/ct;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/umeng/analytics/pro/br;->b:Lcom/umeng/analytics/pro/ct;

    .line 67
    invoke-interface {p1, v1}, Lcom/umeng/analytics/pro/cj;->a(Lcom/umeng/analytics/pro/cv;)Lcom/umeng/analytics/pro/ch;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/br;->c:Lcom/umeng/analytics/pro/ch;

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/bi;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 96
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/br;->a(Lcom/umeng/analytics/pro/bi;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 98
    :catch_0
    new-instance p1, Lcom/umeng/analytics/pro/bo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bo;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/umeng/analytics/pro/bi;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/umeng/analytics/pro/br;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 81
    iget-object v0, p0, Lcom/umeng/analytics/pro/br;->c:Lcom/umeng/analytics/pro/ch;

    invoke-interface {p1, v0}, Lcom/umeng/analytics/pro/bi;->write(Lcom/umeng/analytics/pro/ch;)V

    .line 82
    iget-object p1, p0, Lcom/umeng/analytics/pro/br;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/umeng/analytics/pro/bi;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/br;->a(Lcom/umeng/analytics/pro/bi;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
