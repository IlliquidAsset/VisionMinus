.class public final enum Lcom/powervision/gcs/model/MapMarker;
.super Ljava/lang/Enum;
.source "MapMarker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/gcs/model/MapMarker;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/gcs/model/MapMarker;

.field public static final enum AIRCRAFT_LOCATION_MARKER:Lcom/powervision/gcs/model/MapMarker;

.field public static final enum GIMBAL_LOCATION_MARKER:Lcom/powervision/gcs/model/MapMarker;

.field public static final enum HOME_MARKER:Lcom/powervision/gcs/model/MapMarker;

.field public static final enum PEOPLE_HOME_LOCATION_MARKER:Lcom/powervision/gcs/model/MapMarker;

.field public static final enum PEOPLE_LOCATION_MARKER:Lcom/powervision/gcs/model/MapMarker;

.field public static final enum TAKEOFF_MARKER:Lcom/powervision/gcs/model/MapMarker;

.field public static final enum WAYPOINT_MARKER:Lcom/powervision/gcs/model/MapMarker;


# instance fields
.field private final markerResId:I

.field private final markerType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 10
    new-instance v0, Lcom/powervision/gcs/model/MapMarker;

    sget v1, Lcom/powervision/gcs/R$mipmap;->map_user_location:I

    const-string v2, "PEOPLE_LOCATION_MARKER"

    const/4 v3, 0x0

    const-string v4, "PEOPLE_LOCATION"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/powervision/gcs/model/MapMarker;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/model/MapMarker;->PEOPLE_LOCATION_MARKER:Lcom/powervision/gcs/model/MapMarker;

    .line 11
    new-instance v0, Lcom/powervision/gcs/model/MapMarker;

    sget v1, Lcom/powervision/gcs/R$mipmap;->map_user_home_location:I

    const-string v2, "PEOPLE_HOME_LOCATION_MARKER"

    const/4 v5, 0x1

    invoke-direct {v0, v2, v5, v4, v1}, Lcom/powervision/gcs/model/MapMarker;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/model/MapMarker;->PEOPLE_HOME_LOCATION_MARKER:Lcom/powervision/gcs/model/MapMarker;

    .line 12
    new-instance v0, Lcom/powervision/gcs/model/MapMarker;

    sget v1, Lcom/powervision/gcs/R$drawable;->map_plane_location:I

    const-string v2, "AIRCRAFT_LOCATION_MARKER"

    const/4 v4, 0x2

    const-string v6, "AIRCRAFT_LOCATION"

    invoke-direct {v0, v2, v4, v6, v1}, Lcom/powervision/gcs/model/MapMarker;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/model/MapMarker;->AIRCRAFT_LOCATION_MARKER:Lcom/powervision/gcs/model/MapMarker;

    .line 13
    new-instance v0, Lcom/powervision/gcs/model/MapMarker;

    sget v1, Lcom/powervision/gcs/R$mipmap;->gimble_direction:I

    const-string v2, "GIMBAL_LOCATION_MARKER"

    const/4 v6, 0x3

    const-string v7, "GIMBAL_LOCATION"

    invoke-direct {v0, v2, v6, v7, v1}, Lcom/powervision/gcs/model/MapMarker;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/model/MapMarker;->GIMBAL_LOCATION_MARKER:Lcom/powervision/gcs/model/MapMarker;

    .line 14
    new-instance v0, Lcom/powervision/gcs/model/MapMarker;

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_map_point_unselect:I

    const-string v2, "WAYPOINT_MARKER"

    const/4 v7, 0x4

    const-string v8, "WAYPOINT"

    invoke-direct {v0, v2, v7, v8, v1}, Lcom/powervision/gcs/model/MapMarker;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/model/MapMarker;->WAYPOINT_MARKER:Lcom/powervision/gcs/model/MapMarker;

    .line 15
    new-instance v0, Lcom/powervision/gcs/model/MapMarker;

    sget v1, Lcom/powervision/gcs/R$mipmap;->map_tap_marker:I

    const-string v2, "HOME_MARKER"

    const/4 v8, 0x5

    const-string v9, "HOME"

    invoke-direct {v0, v2, v8, v9, v1}, Lcom/powervision/gcs/model/MapMarker;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/model/MapMarker;->HOME_MARKER:Lcom/powervision/gcs/model/MapMarker;

    .line 16
    new-instance v0, Lcom/powervision/gcs/model/MapMarker;

    sget v1, Lcom/powervision/gcs/R$mipmap;->map_tap_marker:I

    const-string v2, "TAKEOFF_MARKER"

    const/4 v9, 0x6

    const-string v10, "TAKEOFF"

    invoke-direct {v0, v2, v9, v10, v1}, Lcom/powervision/gcs/model/MapMarker;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/model/MapMarker;->TAKEOFF_MARKER:Lcom/powervision/gcs/model/MapMarker;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/powervision/gcs/model/MapMarker;

    .line 8
    sget-object v2, Lcom/powervision/gcs/model/MapMarker;->PEOPLE_LOCATION_MARKER:Lcom/powervision/gcs/model/MapMarker;

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/gcs/model/MapMarker;->PEOPLE_HOME_LOCATION_MARKER:Lcom/powervision/gcs/model/MapMarker;

    aput-object v2, v1, v5

    sget-object v2, Lcom/powervision/gcs/model/MapMarker;->AIRCRAFT_LOCATION_MARKER:Lcom/powervision/gcs/model/MapMarker;

    aput-object v2, v1, v4

    sget-object v2, Lcom/powervision/gcs/model/MapMarker;->GIMBAL_LOCATION_MARKER:Lcom/powervision/gcs/model/MapMarker;

    aput-object v2, v1, v6

    sget-object v2, Lcom/powervision/gcs/model/MapMarker;->WAYPOINT_MARKER:Lcom/powervision/gcs/model/MapMarker;

    aput-object v2, v1, v7

    sget-object v2, Lcom/powervision/gcs/model/MapMarker;->HOME_MARKER:Lcom/powervision/gcs/model/MapMarker;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/powervision/gcs/model/MapMarker;->$VALUES:[Lcom/powervision/gcs/model/MapMarker;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/powervision/gcs/model/MapMarker;->markerType:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcom/powervision/gcs/model/MapMarker;->markerResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/gcs/model/MapMarker;
    .locals 1

    .line 8
    const-class v0, Lcom/powervision/gcs/model/MapMarker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/gcs/model/MapMarker;

    return-object p0
.end method

.method public static values()[Lcom/powervision/gcs/model/MapMarker;
    .locals 1

    .line 8
    sget-object v0, Lcom/powervision/gcs/model/MapMarker;->$VALUES:[Lcom/powervision/gcs/model/MapMarker;

    invoke-virtual {v0}, [Lcom/powervision/gcs/model/MapMarker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/gcs/model/MapMarker;

    return-object v0
.end method


# virtual methods
.method public getMarkerResId()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/powervision/gcs/model/MapMarker;->markerResId:I

    return v0
.end method

.method public getMarkerType()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/powervision/gcs/model/MapMarker;->markerType:Ljava/lang/String;

    return-object v0
.end method
