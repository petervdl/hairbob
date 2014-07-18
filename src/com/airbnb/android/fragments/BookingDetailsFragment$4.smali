.class Lcom/airbnb/android/fragments/BookingDetailsFragment$4;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupStickyButtonAddPaymentMethod()V
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
    .line 475
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->addPaymentMethod()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$700(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    .line 480
    return-void
.end method
