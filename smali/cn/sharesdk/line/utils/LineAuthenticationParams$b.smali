.class public final Lcn/sharesdk/line/utils/LineAuthenticationParams$b;
.super Ljava/lang/Object;
.source "LineAuthenticationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/line/utils/LineAuthenticationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/sharesdk/line/utils/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/sharesdk/line/utils/LineAuthenticationParams$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/line/utils/LineAuthenticationParams$b;)Ljava/util/List;
    .locals 0

    .line 110
    iget-object p0, p0, Lcn/sharesdk/line/utils/LineAuthenticationParams$b;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcn/sharesdk/line/utils/LineAuthenticationParams$b;)Lcn/sharesdk/line/utils/LineAuthenticationParams$a;
    .locals 0

    .line 110
    iget-object p0, p0, Lcn/sharesdk/line/utils/LineAuthenticationParams$b;->b:Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    return-object p0
.end method


# virtual methods
.method public a(Lcn/sharesdk/line/utils/LineAuthenticationParams$a;)Lcn/sharesdk/line/utils/LineAuthenticationParams$b;
    .locals 0

    .line 132
    iput-object p1, p0, Lcn/sharesdk/line/utils/LineAuthenticationParams$b;->b:Lcn/sharesdk/line/utils/LineAuthenticationParams$a;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcn/sharesdk/line/utils/LineAuthenticationParams$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/sharesdk/line/utils/e;",
            ">;)",
            "Lcn/sharesdk/line/utils/LineAuthenticationParams$b;"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcn/sharesdk/line/utils/LineAuthenticationParams$b;->a:Ljava/util/List;

    return-object p0
.end method

.method public a()Lcn/sharesdk/line/utils/LineAuthenticationParams;
    .locals 2

    .line 141
    new-instance v0, Lcn/sharesdk/line/utils/LineAuthenticationParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/line/utils/LineAuthenticationParams;-><init>(Lcn/sharesdk/line/utils/LineAuthenticationParams$b;Lcn/sharesdk/line/utils/LineAuthenticationParams$1;)V

    return-object v0
.end method
