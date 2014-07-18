.class Lcom/airbnb/android/fragments/ContactHostFragment$8$1;
.super Ljava/lang/Object;
.source "ContactHostFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ContactHostFragment$8;->onResponse(Lcom/airbnb/android/requests/CreateInquiryRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/ContactHostFragment$8;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ContactHostFragment$8;)V
    .registers 2

    .prologue
    .line 363
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8$1;->this$1:Lcom/airbnb/android/fragments/ContactHostFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8$1;->this$1:Lcom/airbnb/android/fragments/ContactHostFragment$8;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ContactHostFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 367
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$8$1;->this$1:Lcom/airbnb/android/fragments/ContactHostFragment$8;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ContactHostFragment$8;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ContactHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 369
    :cond_15
    return-void
.end method
