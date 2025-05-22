.class public final Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;
.super Ljava/lang/Object;
.source "QRCode.java"


# instance fields
.field private a:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field private b:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

.field private c:Lcn/sharesdk/framework/utils/QRCodeUtil/l;

.field private d:I

.field private e:Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->d:I

    return-void
.end method

.method public static b(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;
    .locals 1

    .line 39
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->d:I

    return-void
.end method

.method public a(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;

    return-void
.end method

.method public a(Lcn/sharesdk/framework/utils/QRCodeUtil/f;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    return-void
.end method

.method public a(Lcn/sharesdk/framework/utils/QRCodeUtil/i;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    return-void
.end method

.method public a(Lcn/sharesdk/framework/utils/QRCodeUtil/l;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/l;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<<\n"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode: "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n ecLevel: "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n version: "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n maskPattern: "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;

    if-nez v1, :cond_0

    const-string v1, "\n matrix: null\n"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\n matrix:\n"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ">>\n"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
