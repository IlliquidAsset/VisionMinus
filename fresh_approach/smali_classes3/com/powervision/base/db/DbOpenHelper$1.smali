.class Lcom/powervision/base/db/DbOpenHelper$1;
.super Ljava/lang/Object;
.source "DbOpenHelper.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/db/DbOpenHelper;->initSql()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/db/DbOpenHelper;


# direct methods
.method constructor <init>(Lcom/powervision/base/db/DbOpenHelper;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/powervision/base/db/DbOpenHelper$1;->this$0:Lcom/powervision/base/db/DbOpenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    const-string v0, "DbOpenHelper onComplete..."

    .line 75
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/powervision/base/db/DbOpenHelper$1;->this$0:Lcom/powervision/base/db/DbOpenHelper;

    invoke-static {v0}, Lcom/powervision/base/db/DbOpenHelper;->access$000(Lcom/powervision/base/db/DbOpenHelper;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "DbOpenHelper onError = "

    .line 70
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/Integer;)V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DbOpenHelper onNext = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/powervision/base/db/DbOpenHelper$1;->onNext(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
