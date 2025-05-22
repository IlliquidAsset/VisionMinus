.class Lcom/umeng/analytics/b$1$2;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/umeng/analytics/b$1;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/b$1;Ljava/util/HashMap;Landroid/net/Uri;)V
    .locals 0

    .line 2160
    iput-object p1, p0, Lcom/umeng/analytics/b$1$2;->c:Lcom/umeng/analytics/b$1;

    iput-object p2, p0, Lcom/umeng/analytics/b$1$2;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/umeng/analytics/b$1$2;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2163
    iget-object v0, p0, Lcom/umeng/analytics/b$1$2;->c:Lcom/umeng/analytics/b$1;

    iget-object v0, v0, Lcom/umeng/analytics/b$1;->b:Lcom/umeng/analytics/UMLinkListener;

    iget-object v1, p0, Lcom/umeng/analytics/b$1$2;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/umeng/analytics/b$1$2;->b:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/umeng/analytics/UMLinkListener;->onInstall(Ljava/util/HashMap;Landroid/net/Uri;)V

    return-void
.end method
