.class Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;
.super Ljava/lang/Object;
.source "MLRoomsAndBedsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 82
    new-instance v0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v5}, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;-><init>(Landroid/content/Context;Ljava/lang/Boolean;Z)V

    .line 83
    .local v0, "adapter":Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->expand()V

    .line 84
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e0506

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 86
    new-instance v3, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1$1;

    invoke-direct {v3, p0, v0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1$1;-><init>(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 97
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 98
    return-void
.end method
