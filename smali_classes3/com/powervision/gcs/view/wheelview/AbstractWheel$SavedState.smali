.class Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AbstractWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/wheelview/AbstractWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 309
    new-instance v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState$1;

    invoke-direct {v0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState$1;-><init>()V

    sput-object v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 298
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState;->currentItem:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/powervision/gcs/view/wheelview/AbstractWheel$1;)V
    .locals 0

    .line 290
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 304
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 305
    iget p2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState;->currentItem:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
