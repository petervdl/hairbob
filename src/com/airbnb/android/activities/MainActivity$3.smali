.class Lcom/airbnb/android/activities/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/amazon/motiongestures/GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/MainActivity;)V
    .registers 2

    .prologue
    .line 554
    iput-object p1, p0, Lcom/airbnb/android/activities/MainActivity$3;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureEvent(Lcom/amazon/motiongestures/GestureEvent;)V
    .registers 4
    .param p1, "gestureEvent"    # Lcom/amazon/motiongestures/GestureEvent;

    .prologue
    .line 557
    iget v0, p1, Lcom/amazon/motiongestures/GestureEvent;->direction:I

    packed-switch v0, :pswitch_data_26

    .line 565
    :goto_5
    return-void

    .line 559
    :pswitch_6
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity$3;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lcom/airbnb/android/activities/MainActivity;->access$100(Lcom/airbnb/android/activities/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity$3;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mDrawerLayoutView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/airbnb/android/activities/MainActivity;->access$400(Lcom/airbnb/android/activities/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_5

    .line 562
    :pswitch_16
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity$3;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lcom/airbnb/android/activities/MainActivity;->access$100(Lcom/airbnb/android/activities/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity$3;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mDrawerLayoutView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/airbnb/android/activities/MainActivity;->access$400(Lcom/airbnb/android/activities/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_5

    .line 557
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_16
        :pswitch_6
    .end packed-switch
.end method
