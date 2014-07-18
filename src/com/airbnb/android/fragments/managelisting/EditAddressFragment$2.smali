.class Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$2;
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
    .line 99
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->selectCountry()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;)V

    .line 104
    return-void
.end method
