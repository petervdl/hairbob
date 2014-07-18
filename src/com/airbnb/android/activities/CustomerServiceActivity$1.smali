.class Lcom/airbnb/android/activities/CustomerServiceActivity$1;
.super Ljava/lang/Object;
.source "CustomerServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/CustomerServiceActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/CustomerServiceActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/CustomerServiceActivity;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/airbnb/android/activities/CustomerServiceActivity$1;->this$0:Lcom/airbnb/android/activities/CustomerServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/airbnb/android/activities/CustomerServiceActivity$1;->this$0:Lcom/airbnb/android/activities/CustomerServiceActivity;

    # getter for: Lcom/airbnb/android/activities/CustomerServiceActivity;->mDoubleTapDetector:Landroid/support/v4/view/GestureDetectorCompat;
    invoke-static {v0}, Lcom/airbnb/android/activities/CustomerServiceActivity;->access$100(Lcom/airbnb/android/activities/CustomerServiceActivity;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
