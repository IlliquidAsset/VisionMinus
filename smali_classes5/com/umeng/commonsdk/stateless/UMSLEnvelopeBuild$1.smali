.class Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild$1;
.super Ljava/lang/Thread;
.source "UMSLEnvelopeBuild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->buildSLBaseHeader(Landroid/content/Context;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;Landroid/content/Context;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild$1;->b:Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;

    iput-object p2, p0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 34
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 35
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild$1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u57fa\u7840\u7ec4\u4ef6\u5e939.4.0\u7248\u672c\u4ec5\u652f\u63016.2.0\u53ca\u66f4\u9ad8\u7248\u672c\u63a8\u9001SDK\u30017.1.0\u53ca\u66f4\u9ad8\u7248\u672c\u5206\u4eabSDK\u3002"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
