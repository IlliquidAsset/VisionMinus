.class final Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState$1;
.super Ljava/lang/Object;
.source "FlexboxLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;
    .locals 2

    .line 3067
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>(Landroid/os/Parcel;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 3064
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;
    .locals 0

    .line 3072
    new-array p1, p1, [Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3064
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState$1;->newArray(I)[Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method
