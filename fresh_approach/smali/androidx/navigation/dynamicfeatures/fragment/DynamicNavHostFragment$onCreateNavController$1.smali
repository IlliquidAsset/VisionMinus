.class final Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment$onCreateNavController$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DynamicNavHostFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment;->onCreateNavController(Landroidx/navigation/NavController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator$Destination;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicNavHostFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicNavHostFragment.kt\nandroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment$onCreateNavController$1\n*L\n1#1,69:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator$Destination;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $fragmentNavigator:Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator;


# direct methods
.method constructor <init>(Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment$onCreateNavController$1;->$fragmentNavigator:Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator$Destination;
    .locals 2

    .line 52
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment$onCreateNavController$1;->$fragmentNavigator:Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator;

    invoke-virtual {v0}, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator;->createDestination()Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator$Destination;

    move-result-object v0

    .line 53
    const-class v1, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator$Destination;->setClassName(Ljava/lang/String;)Landroidx/navigation/fragment/FragmentNavigator$Destination;

    .line 54
    sget v1, Landroidx/navigation/dynamicfeatures/fragment/R$id;->dfn_progress_fragment:I

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator$Destination;->setId(I)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment$onCreateNavController$1;->invoke()Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator$Destination;

    move-result-object v0

    return-object v0
.end method
