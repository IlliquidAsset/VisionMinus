.class Lcom/umeng/analytics/b$1$3;
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
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/umeng/analytics/b$1;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/b$1;Ljava/lang/Exception;)V
    .locals 0

    .line 2170
    iput-object p1, p0, Lcom/umeng/analytics/b$1$3;->b:Lcom/umeng/analytics/b$1;

    iput-object p2, p0, Lcom/umeng/analytics/b$1$3;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2173
    iget-object v0, p0, Lcom/umeng/analytics/b$1$3;->b:Lcom/umeng/analytics/b$1;

    iget-object v0, v0, Lcom/umeng/analytics/b$1;->b:Lcom/umeng/analytics/UMLinkListener;

    iget-object v1, p0, Lcom/umeng/analytics/b$1$3;->a:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/umeng/analytics/UMLinkListener;->onError(Ljava/lang/String;)V

    return-void
.end method
