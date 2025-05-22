.class public final synthetic Lcom/powervision/base/base/lifecycle/-$$Lambda$ActivityManager$a7SqFvIyTZP2Scg3WrLehkn54Us;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/powervision/base/base/lifecycle/ActivityManager;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/base/base/lifecycle/ActivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/base/lifecycle/-$$Lambda$ActivityManager$a7SqFvIyTZP2Scg3WrLehkn54Us;->f$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/-$$Lambda$ActivityManager$a7SqFvIyTZP2Scg3WrLehkn54Us;->f$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->lambda$countdown$1$ActivityManager(Ljava/lang/Integer;)V

    return-void
.end method
