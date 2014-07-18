.class Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$4;
.super Ljava/lang/Object;
.source "EditAddressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->onStart()V
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
    .line 251
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    const/4 v1, 0x0

    # invokes: Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->submitAddressForGeocode(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;Z)V

    .line 256
    return-void
.end method
