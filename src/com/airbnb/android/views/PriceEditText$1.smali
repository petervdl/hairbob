.class Lcom/airbnb/android/views/PriceEditText$1;
.super Ljava/lang/Object;
.source "PriceEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/PriceEditText;->setupViews(Landroid/content/res/TypedArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/PriceEditText;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/PriceEditText;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/airbnb/android/views/PriceEditText$1;->this$0:Lcom/airbnb/android/views/PriceEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 67
    if-eqz p2, :cond_13

    .line 68
    iget-object v1, p0, Lcom/airbnb/android/views/PriceEditText$1;->this$0:Lcom/airbnb/android/views/PriceEditText;

    # getter for: Lcom/airbnb/android/views/PriceEditText;->mPriceEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/views/PriceEditText;->access$000(Lcom/airbnb/android/views/PriceEditText;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 69
    .local v0, "etext":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 71
    .end local v0    # "etext":Landroid/text/Editable;
    :cond_13
    return-void
.end method
