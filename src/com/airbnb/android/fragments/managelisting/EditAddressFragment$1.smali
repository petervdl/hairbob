.class Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$1;
.super Ljava/lang/Object;
.source "EditAddressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    const-string/jumbo v0, "US"

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mCountryCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 88
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->selectState()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;)V

    .line 90
    :cond_14
    return-void
.end method
