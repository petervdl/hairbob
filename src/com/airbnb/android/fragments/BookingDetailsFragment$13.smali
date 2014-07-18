.class Lcom/airbnb/android/fragments/BookingDetailsFragment$13;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupPriceFields(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 2

    .prologue
    .line 868
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$13;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 871
    const/4 v0, 0x6

    if-ne p2, v0, :cond_9

    .line 872
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$13;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const/4 v1, 0x1

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->applyCoupon(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1900(Lcom/airbnb/android/fragments/BookingDetailsFragment;Z)V

    .line 874
    :cond_9
    const/4 v0, 0x0

    return v0
.end method
