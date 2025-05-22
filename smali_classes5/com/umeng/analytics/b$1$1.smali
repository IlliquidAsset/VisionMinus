.class Lcom/umeng/analytics/b$1$1;
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
.field final synthetic a:Lcom/umeng/analytics/b$1;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/b$1;)V
    .locals 0

    .line 2106
    iput-object p1, p0, Lcom/umeng/analytics/b$1$1;->a:Lcom/umeng/analytics/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2109
    iget-object v0, p0, Lcom/umeng/analytics/b$1$1;->a:Lcom/umeng/analytics/b$1;

    iget-object v0, v0, Lcom/umeng/analytics/b$1;->b:Lcom/umeng/analytics/UMLinkListener;

    const-string v1, "params null"

    invoke-interface {v0, v1}, Lcom/umeng/analytics/UMLinkListener;->onError(Ljava/lang/String;)V

    return-void
.end method
