using Microsoft.AspNetCore.Mvc;
using FreshMart.Models;
using System.Linq;

namespace FreshMart.Components
{
    public class CategoryMenu: ViewComponent
    {
        private readonly ICategoryRepository _categoryRepository;
        public CategoryMenu(ICategoryRepository categoryRepository) {
            _categoryRepository = categoryRepository;
        }

        public IViewComponentResult Invoke() {
            var categories = _categoryRepository.GetAllCategories.OrderBy(c => c.CategoryName);
            return View(categories);
        }
    }
}
