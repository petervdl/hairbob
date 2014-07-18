.class Lcom/airbnb/android/fragments/WebViewMapFragment$2;
.super Ljava/lang/Object;
.source "WebViewMapFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$clickDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/WebViewMapFragment;Landroid/view/GestureDetector;)V
    .registers 3

    .prologue
    .line 210
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$2;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$2;->val$clickDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$2;->val$clickDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
