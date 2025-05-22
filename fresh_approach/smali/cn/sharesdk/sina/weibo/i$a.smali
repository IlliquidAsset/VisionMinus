.class public Lcn/sharesdk/sina/weibo/i$a;
.super Ljava/lang/Object;
.source "WeiboAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/sina/weibo/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.sina.weibo"

    .line 33
    iput-object v0, p0, Lcn/sharesdk/sina/weibo/i$a;->a:Ljava/lang/String;

    const-string v0, "com.sina.weibo.SSOActivity"

    .line 34
    iput-object v0, p0, Lcn/sharesdk/sina/weibo/i$a;->b:Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcn/sharesdk/sina/weibo/i$a;->c:I

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/i$a;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/i$a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/i$a;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/i$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/i$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/i$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 58
    iget v0, p0, Lcn/sharesdk/sina/weibo/i$a;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeiboInfo: PackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/i$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportApi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/sharesdk/sina/weibo/i$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
