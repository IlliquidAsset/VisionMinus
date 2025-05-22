.class final Lcn/sharesdk/line/utils/LineAuthenticationConfig$1;
.super Ljava/lang/Object;
.source "LineAuthenticationConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/line/utils/LineAuthenticationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/sharesdk/line/utils/LineAuthenticationConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/sharesdk/line/utils/LineAuthenticationConfig;
    .locals 2

    .line 16
    new-instance v0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/sharesdk/line/utils/LineAuthenticationConfig;-><init>(Landroid/os/Parcel;Lcn/sharesdk/line/utils/LineAuthenticationConfig$1;)V

    return-object v0
.end method

.method public a(I)[Lcn/sharesdk/line/utils/LineAuthenticationConfig;
    .locals 0

    .line 21
    new-array p1, p1, [Lcn/sharesdk/line/utils/LineAuthenticationConfig;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$1;->a(Landroid/os/Parcel;)Lcn/sharesdk/line/utils/LineAuthenticationConfig;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$1;->a(I)[Lcn/sharesdk/line/utils/LineAuthenticationConfig;

    move-result-object p1

    return-object p1
.end method
