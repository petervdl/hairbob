.class public Lcom/airbnb/android/adapters/AirlineCarriersAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AirlineCarriersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/arrivalAssistant/Airline;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayoutResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/arrivalAssistant/Airline;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, "airlines":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/arrivalAssistant/Airline;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    iput p2, p0, Lcom/airbnb/android/adapters/AirlineCarriersAdapter;->mLayoutResourceId:I

    .line 23
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 27
    if-nez p2, :cond_11

    .line 28
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/airbnb/android/adapters/AirlineCarriersAdapter;->mLayoutResourceId:I

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 31
    :cond_11
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/AirlineCarriersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/arrivalAssistant/Airline;

    .line 32
    .local v0, "airline":Lcom/airbnb/android/models/arrivalAssistant/Airline;
    const v2, 0x1020014

    invoke-static {p2, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 33
    .local v1, "textView":Landroid/widget/TextView;
    const-string/jumbo v2, "%s (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/Airline;->getAirline()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/Airline;->getIata()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-object p2
.end method
