.class synthetic Lcom/powervision/base/rxbus/RxBus$5;
.super Ljava/lang/Object;
.source "RxBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/rxbus/RxBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$powervision$base$rxbus$ThreadMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 227
    invoke-static {}, Lcom/powervision/base/rxbus/ThreadMode;->values()[Lcom/powervision/base/rxbus/ThreadMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/powervision/base/rxbus/RxBus$5;->$SwitchMap$com$powervision$base$rxbus$ThreadMode:[I

    :try_start_0
    sget-object v1, Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;

    invoke-virtual {v1}, Lcom/powervision/base/rxbus/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/powervision/base/rxbus/RxBus$5;->$SwitchMap$com$powervision$base$rxbus$ThreadMode:[I

    sget-object v1, Lcom/powervision/base/rxbus/ThreadMode;->NEW_THREAD:Lcom/powervision/base/rxbus/ThreadMode;

    invoke-virtual {v1}, Lcom/powervision/base/rxbus/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/powervision/base/rxbus/RxBus$5;->$SwitchMap$com$powervision$base$rxbus$ThreadMode:[I

    sget-object v1, Lcom/powervision/base/rxbus/ThreadMode;->CURRENT_THREAD:Lcom/powervision/base/rxbus/ThreadMode;

    invoke-virtual {v1}, Lcom/powervision/base/rxbus/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
