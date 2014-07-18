.class Lcom/airbnb/android/utils/AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "AdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/AdapterWrapper;-><init>(Landroid/widget/ArrayAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/utils/AdapterWrapper;


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/AdapterWrapper;)V
    .registers 2

    .prologue
    .line 21
    .local p0, "this":Lcom/airbnb/android/utils/AdapterWrapper$1;, "Lcom/airbnb/android/utils/AdapterWrapper.1;"
    iput-object p1, p0, Lcom/airbnb/android/utils/AdapterWrapper$1;->this$0:Lcom/airbnb/android/utils/AdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 24
    .local p0, "this":Lcom/airbnb/android/utils/AdapterWrapper$1;, "Lcom/airbnb/android/utils/AdapterWrapper.1;"
    iget-object v0, p0, Lcom/airbnb/android/utils/AdapterWrapper$1;->this$0:Lcom/airbnb/android/utils/AdapterWrapper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/AdapterWrapper;->notifyDataSetChanged()V

    .line 25
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 29
    .local p0, "this":Lcom/airbnb/android/utils/AdapterWrapper$1;, "Lcom/airbnb/android/utils/AdapterWrapper.1;"
    iget-object v0, p0, Lcom/airbnb/android/utils/AdapterWrapper$1;->this$0:Lcom/airbnb/android/utils/AdapterWrapper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/AdapterWrapper;->notifyDataSetInvalidated()V

    .line 30
    return-void
.end method
