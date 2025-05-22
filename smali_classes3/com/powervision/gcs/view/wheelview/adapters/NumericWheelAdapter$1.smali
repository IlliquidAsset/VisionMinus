.class Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$1;
.super Ljava/lang/Object;
.source "NumericWheelAdapter.java"

# interfaces
.implements Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$IntParamFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$IntParamFunction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$format:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$1;->val$format:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$1;->apply(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Ljava/lang/String;
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$1;->val$format:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$1;->val$format:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
