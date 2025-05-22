.class Lcn/sharesdk/twitter/c$2;
.super Ljava/lang/Object;
.source "TwitterHelper.java"

# interfaces
.implements Lcn/sharesdk/twitter/UpLoadViewCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/twitter/c;->b(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcn/sharesdk/twitter/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/twitter/c;Ljava/lang/String;J)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcn/sharesdk/twitter/c$2;->c:Lcn/sharesdk/twitter/c;

    iput-object p2, p0, Lcn/sharesdk/twitter/c$2;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcn/sharesdk/twitter/c$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResule(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 426
    iget-object p1, p0, Lcn/sharesdk/twitter/c$2;->c:Lcn/sharesdk/twitter/c;

    invoke-static {p1}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/twitter/c;)Lcn/sharesdk/twitter/MappedFileReader;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/twitter/c;Lcn/sharesdk/twitter/MappedFileReader;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 428
    invoke-static {p1}, Lcn/sharesdk/twitter/MappedFileReader;->byteToBase64([B)Ljava/lang/String;

    move-result-object v1

    .line 429
    iget-object v0, p0, Lcn/sharesdk/twitter/c$2;->c:Lcn/sharesdk/twitter/c;

    const/4 v2, 0x1

    iget-object v4, p0, Lcn/sharesdk/twitter/c$2;->a:Ljava/lang/String;

    iget-wide v5, p0, Lcn/sharesdk/twitter/c$2;->b:J

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/twitter/c;Ljava/lang/String;ZLcn/sharesdk/twitter/UpLoadViewCallBack;Ljava/lang/String;J)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/twitter/c$2;->c:Lcn/sharesdk/twitter/c;

    invoke-static {p1}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/twitter/c;)Lcn/sharesdk/twitter/MappedFileReader;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 432
    iget-object p1, p0, Lcn/sharesdk/twitter/c$2;->c:Lcn/sharesdk/twitter/c;

    invoke-static {p1}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/twitter/c;)Lcn/sharesdk/twitter/MappedFileReader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/sharesdk/twitter/MappedFileReader;->close()V

    :cond_1
    :goto_0
    return-void
.end method
