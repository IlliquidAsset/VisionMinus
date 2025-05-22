.class public Lcn/sharesdk/line/utils/LineAuthenticationParams;
.super Ljava/lang/Object;
.source "LineAuthenticationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/line/utils/LineAuthenticationParams$b;,
        Lcn/sharesdk/line/utils/LineAuthenticationParams$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/sharesdk/line/utils/LineAuthenticationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/sharesdk/line/utils/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcn/sharesdk/line/utils/LineAuthenticationParams$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcn/sharesdk/line/utils/LineAuthenticationParams$1;

    invoke-direct {v0}, Lcn/sharesdk/line/utils/LineAuthenticationParams$1;-><init>()V

    sput-object v0, Lcn/sharesdk/line/utils/LineAuthenticationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/line/utils/e;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationParams;->a:Ljava/util/List;

    .line 50
    const-class v0, Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    invoke-static {p1, v0}, Lcn/sharesdk/line/utils/d;->a(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    iput-object p1, p0, Lcn/sharesdk/line/utils/LineAuthenticationParams;->b:Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/sharesdk/line/utils/LineAuthenticationParams$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcn/sharesdk/line/utils/LineAuthenticationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcn/sharesdk/line/utils/LineAuthenticationParams$b;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcn/sharesdk/line/utils/LineAuthenticationParams$b;->a(Lcn/sharesdk/line/utils/LineAuthenticationParams$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationParams;->a:Ljava/util/List;

    .line 45
    invoke-static {p1}, Lcn/sharesdk/line/utils/LineAuthenticationParams$b;->b(Lcn/sharesdk/line/utils/LineAuthenticationParams$b;)Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/line/utils/LineAuthenticationParams;->b:Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    return-void
.end method

.method synthetic constructor <init>(Lcn/sharesdk/line/utils/LineAuthenticationParams$b;Lcn/sharesdk/line/utils/LineAuthenticationParams$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcn/sharesdk/line/utils/LineAuthenticationParams;-><init>(Lcn/sharesdk/line/utils/LineAuthenticationParams$b;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/sharesdk/line/utils/e;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationParams;->a:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 60
    iget-object p2, p0, Lcn/sharesdk/line/utils/LineAuthenticationParams;->a:Ljava/util/List;

    invoke-static {p2}, Lcn/sharesdk/line/utils/e;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 61
    iget-object p2, p0, Lcn/sharesdk/line/utils/LineAuthenticationParams;->b:Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    invoke-static {p1, p2}, Lcn/sharesdk/line/utils/d;->a(Landroid/os/Parcel;Ljava/lang/Enum;)V

    return-void
.end method
