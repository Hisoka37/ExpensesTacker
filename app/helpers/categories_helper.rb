module CategoriesHelper
    def tailwind_color(category)
        color_variants = {
            light_blue: 'cursor-default bg-sky-300 hover:bg-sky-400',
            rose: 'cursor-default bg-rose-300 hover:bg-rose-400'
        }
        if category&.color.present?
        color_variants[category.color.to_sym]
        else
            'bg-gray-100 hover:bg-gray-100'
        end
    end
end
