.class Lcom/airbnb/android/fragments/ArrivalDetailsFragment$13;
.super Ljava/lang/Object;
.source "ArrivalDetailsFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->startAddGeofenceRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 2

    .prologue
    .line 795
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$13;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 799
    return-void
.end method
