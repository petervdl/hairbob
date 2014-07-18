.class Lcom/airbnb/android/fragments/WebViewMapFragment$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WebViewMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/WebViewMapFragment;->setOnMapClickListener(Lcom/airbnb/android/views/AirMapView$OnMapClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

.field final synthetic val$listener:Lcom/airbnb/android/views/AirMapView$OnMapClickListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/WebViewMapFragment;Lcom/airbnb/android/views/AirMapView$OnMapClickListener;)V
    .registers 3

    .prologue
    .line 201
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$1;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$1;->val$listener:Lcom/airbnb/android/views/AirMapView$OnMapClickListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$1;->val$listener:Lcom/airbnb/android/views/AirMapView$OnMapClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/airbnb/android/views/AirMapView$OnMapClickListener;->onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 206
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
