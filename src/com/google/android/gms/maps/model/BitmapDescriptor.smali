.class public final Lcom/google/android/gms/maps/model/BitmapDescriptor;
.super Ljava/lang/Object;


# instance fields
.field private final YU:Lcom/google/android/gms/dynamic/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/d;)V
    .registers 3
    .param p1, "remoteObject"    # Lcom/google/android/gms/dynamic/d;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/d;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->YU:Lcom/google/android/gms/dynamic/d;

    return-void
.end method


# virtual methods
.method public ji()Lcom/google/android/gms/dynamic/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->YU:Lcom/google/android/gms/dynamic/d;

    return-object v0
.end method
