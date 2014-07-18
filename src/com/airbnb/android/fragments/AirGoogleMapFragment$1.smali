.class Lcom/airbnb/android/fragments/AirGoogleMapFragment$1;
.super Ljava/lang/Object;
.source "AirGoogleMapFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AirGoogleMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AirGoogleMapFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AirGoogleMapFragment;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$1;->this$0:Lcom/airbnb/android/fragments/AirGoogleMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$1;->this$0:Lcom/airbnb/android/fragments/AirGoogleMapFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/airbnb/android/utils/MiscUtils;->apiRemoveGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 59
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$1;->this$0:Lcom/airbnb/android/fragments/AirGoogleMapFragment;

    # getter for: Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mOnMapLoadedListener:Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->access$000(Lcom/airbnb/android/fragments/AirGoogleMapFragment;)Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 60
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$1;->this$0:Lcom/airbnb/android/fragments/AirGoogleMapFragment;

    # getter for: Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mOnMapLoadedListener:Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->access$000(Lcom/airbnb/android/fragments/AirGoogleMapFragment;)Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;->onMapLoaded()V

    .line 62
    :cond_1e
    return-void
.end method
