.class public final Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph$Companion;
.super Ljava/lang/Object;
.source "DynamicGraphNavigator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph$Companion;",
        "",
        "()V",
        "getOrThrow",
        "Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;",
        "destination",
        "Landroidx/navigation/NavDestination;",
        "getOrThrow$navigation_dynamic_features_runtime_release",
        "navigation-dynamic-features-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow$navigation_dynamic_features_runtime_release(Landroidx/navigation/NavDestination;)Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;
    .locals 1

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p1

    instance-of v0, p1, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;

    if-eqz p1, :cond_1

    return-object p1

    .line 188
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Dynamic destinations must be part of a DynamicNavGraph.\nYou can use DynamicNavHostFragment, which will take care of setting up the NavController for Dynamic destinations.\nIf you\'re not using Fragments, you must set up the NavigatorProvider manually."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
