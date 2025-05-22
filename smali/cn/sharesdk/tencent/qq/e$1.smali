.class Lcn/sharesdk/tencent/qq/e$1;
.super Ljava/lang/Thread;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/e;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:I

.field final synthetic m:Lcn/sharesdk/tencent/qq/e;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/e$1;->m:Lcn/sharesdk/tencent/qq/e;

    iput-object p2, p0, Lcn/sharesdk/tencent/qq/e$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/sharesdk/tencent/qq/e$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/sharesdk/tencent/qq/e$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/sharesdk/tencent/qq/e$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/sharesdk/tencent/qq/e$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcn/sharesdk/tencent/qq/e$1;->f:Ljava/lang/String;

    iput-object p8, p0, Lcn/sharesdk/tencent/qq/e$1;->g:Ljava/lang/String;

    iput p9, p0, Lcn/sharesdk/tencent/qq/e$1;->h:I

    iput-object p10, p0, Lcn/sharesdk/tencent/qq/e$1;->i:Ljava/lang/String;

    iput-object p11, p0, Lcn/sharesdk/tencent/qq/e$1;->j:Ljava/lang/String;

    iput-object p12, p0, Lcn/sharesdk/tencent/qq/e$1;->k:Ljava/lang/String;

    iput p13, p0, Lcn/sharesdk/tencent/qq/e$1;->l:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 91
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/e$1;->m:Lcn/sharesdk/tencent/qq/e;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/e;->a(Lcn/sharesdk/tencent/qq/e;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/e$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 93
    :try_start_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 96
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/e$1;->m:Lcn/sharesdk/tencent/qq/e;

    iget-object v2, p0, Lcn/sharesdk/tencent/qq/e$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/tencent/qq/e$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcn/sharesdk/tencent/qq/e$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcn/sharesdk/tencent/qq/e$1;->a:Ljava/lang/String;

    iget-object v7, p0, Lcn/sharesdk/tencent/qq/e$1;->e:Ljava/lang/String;

    iget-object v8, p0, Lcn/sharesdk/tencent/qq/e$1;->f:Ljava/lang/String;

    iget-object v9, p0, Lcn/sharesdk/tencent/qq/e$1;->g:Ljava/lang/String;

    iget v10, p0, Lcn/sharesdk/tencent/qq/e$1;->h:I

    iget-object v11, p0, Lcn/sharesdk/tencent/qq/e$1;->i:Ljava/lang/String;

    iget-object v12, p0, Lcn/sharesdk/tencent/qq/e$1;->j:Ljava/lang/String;

    iget-object v13, p0, Lcn/sharesdk/tencent/qq/e$1;->k:Ljava/lang/String;

    iget v14, p0, Lcn/sharesdk/tencent/qq/e$1;->l:I

    invoke-static/range {v1 .. v14}, Lcn/sharesdk/tencent/qq/e;->a(Lcn/sharesdk/tencent/qq/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 99
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
