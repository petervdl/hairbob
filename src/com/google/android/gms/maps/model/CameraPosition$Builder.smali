.class public final Lcom/google/android/gms/maps/model/CameraPosition$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aak:Lcom/google/android/gms/maps/model/LatLng;

.field private aal:F

.field private aam:F

.field private aan:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .registers 2
    .param p1, "bearing"    # F

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aan:F

    return-object p0
.end method

.method public build()Lcom/google/android/gms/maps/model/CameraPosition;
    .registers 6

    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aak:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aal:F

    iget v3, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aam:F

    iget v4, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aan:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    return-object v0
.end method

.method public target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .registers 2
    .param p1, "location"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aak:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .registers 2
    .param p1, "tilt"    # F

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aam:F

    return-object p0
.end method

.method public zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .registers 2
    .param p1, "zoom"    # F

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->aal:F

    return-object p0
.end method
