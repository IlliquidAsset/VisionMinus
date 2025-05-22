.class Lcom/powervision/base/net/observable/ObservableLoader$ResultFunction;
.super Ljava/lang/Object;
.source "ObservableLoader.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/net/observable/ObservableLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/powervision/base/base/entity/BaseResultEntity<",
        "TT;>;",
        "Lcom/powervision/base/base/entity/BaseResultEntity<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/base/net/observable/ObservableLoader$1;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/powervision/base/net/observable/ObservableLoader$ResultFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/powervision/base/base/entity/BaseResultEntity;)Lcom/powervision/base/base/entity/BaseResultEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/base/base/entity/BaseResultEntity<",
            "TT;>;)",
            "Lcom/powervision/base/base/entity/BaseResultEntity<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Lcom/powervision/base/base/entity/BaseResultEntity;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/powervision/base/base/entity/BaseResultEntity;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/powervision/base/base/entity/BaseResultEntity;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 46
    :cond_0
    new-instance v0, Lcom/powervision/base/net/exception/HttpTimeException;

    invoke-virtual {p1}, Lcom/powervision/base/base/entity/BaseResultEntity;->getCode()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/powervision/base/net/exception/HttpTimeException;-><init>(I)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    check-cast p1, Lcom/powervision/base/base/entity/BaseResultEntity;

    invoke-virtual {p0, p1}, Lcom/powervision/base/net/observable/ObservableLoader$ResultFunction;->apply(Lcom/powervision/base/base/entity/BaseResultEntity;)Lcom/powervision/base/base/entity/BaseResultEntity;

    move-result-object p1

    return-object p1
.end method
