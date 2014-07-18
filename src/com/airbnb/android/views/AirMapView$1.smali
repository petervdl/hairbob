.class Lcom/airbnb/android/views/AirMapView$1;
.super Ljava/lang/Object;
.source "AirMapView.java"

# interfaces
.implements Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/AirMapView;->onCreateView(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;ZLcom/airbnb/android/views/AirMapView$MapCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/AirMapView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/AirMapView;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/airbnb/android/views/AirMapView$1;->this$0:Lcom/airbnb/android/views/AirMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView$1;->this$0:Lcom/airbnb/android/views/AirMapView;

    # getter for: Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;
    invoke-static {v0}, Lcom/airbnb/android/views/AirMapView;->access$000(Lcom/airbnb/android/views/AirMapView;)Lcom/airbnb/android/interfaces/AirMapInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/AirMapInterface;->init()V

    .line 167
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView$1;->this$0:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 171
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView$1;->this$0:Lcom/airbnb/android/views/AirMapView;

    # getter for: Lcom/airbnb/android/views/AirMapView;->mMapCallbacks:Lcom/airbnb/android/views/AirMapView$MapCallbacks;
    invoke-static {v0}, Lcom/airbnb/android/views/AirMapView;->access$100(Lcom/airbnb/android/views/AirMapView;)Lcom/airbnb/android/views/AirMapView$MapCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/views/AirMapView$MapCallbacks;->onMapInitialized()V

    .line 173
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView$1;->this$0:Lcom/airbnb/android/views/AirMapView;

    # getter for: Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;
    invoke-static {v0}, Lcom/airbnb/android/views/AirMapView;->access$000(Lcom/airbnb/android/views/AirMapView;)Lcom/airbnb/android/interfaces/AirMapInterface;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/views/AirMapView$1$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/AirMapView$1$1;-><init>(Lcom/airbnb/android/views/AirMapView$1;)V

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/AirMapInterface;->setOnCameraChangeListener(Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;)V

    .line 180
    :cond_28
    return-void
.end method
